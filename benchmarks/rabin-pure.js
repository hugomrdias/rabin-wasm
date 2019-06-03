const Long = require('long')
class Rabin {
    constructor (options = {}) {
      this.window = new Array(options.window || 64).fill(Long.fromInt(0))
      this.wpos = 0
      this.count = 0
      this.digest = Long.fromInt(0)
      this.chunkLength = 0
      this.polynomial = options.polynomial || 17437180132763653
      this.polynomialDegree = 53
      this.polynomialShift = this.polynomialDegree - 8
      this.averageBits = options.bits || 12
      this.minSize = options.min || 8 * 1024
      this.maxSize = options.max || 32 * 1024
      this.mask = Long.fromInt(1).shiftLeft(this.averageBits).subtract(1)
      this.modTable = []
      this.outTable = []

      this.calculateTables()
    }

    calculateTables () {
      for (let i = 0; i < 256; i++) {
        let hash = Long.fromInt(0, true)

        hash = this.appendByte(hash, i)

        for (let j = 0; j < this.window.length - 1; j++) {
          hash = this.appendByte(hash, 0)
        }

        this.outTable[i] = hash
      }

      const k = this.deg(this.polynomial)

      for (let i = 0; i < 256; i++) {
        const b = Long.fromInt(i, true)

        this.modTable[i] = b.shiftLeft(k)
          .modulo(this.polynomial)
          .or(b.shiftLeft(k))
      }
    }

    deg (p) {
      let mask = Long.fromString('0x8000000000000000', true, 16)

      for (let i = 0; i < 64; i++) {
        if (mask.and(p).greaterThan(0)) {
          return Long.fromInt(63 - i)
        }

        mask = mask.shiftRight(1)
      }

      return Long.fromInt(-1)
    }

    appendByte (hash, b) {
      hash = hash.shiftLeft(8)
      hash = hash.or(b)

      return hash.modulo(this.polynomial)
    }

    getFingerprints (bufs) {
      const lengths = []

      for (let i = 0; i < bufs.length; i++) {
        let buf = bufs[i]

        while (true) {
          const remaining = this.nextChunk(buf)

          if (remaining < 0) {
            break
          }

          buf = buf.slice(remaining)

          lengths.push(this.chunkLength)
        }
      }

      return lengths
    }

    nextChunk (buf) {
      for (let i = 0; i < buf.length; i++) {
        const val = Long.fromInt(buf[i])

        this.slide(val)

        this.count++

        if ((this.count >= this.minSize && this.digest.and(this.mask).equals(0)) || this.count >= this.maxSize) {
          this.chunkLength = this.count

          this.reset()

          return i + 1
        }
      }

      return -1
    }

    slide (value) {
      const out = this.window[this.wpos].toInt() & 255
      this.window[this.wpos] = value
      this.digest = this.digest.xor(this.outTable[out])
      this.wpos = (this.wpos + 1) % this.window.length

      this.append(value)
    }

    reset () {
      this.window = this.window.map(() => Long.fromInt(0))
      this.wpos = 0
      this.count = 0
      this.digest = Long.fromInt(0)

      this.slide(Long.fromInt(1))
    }

    append (value) {
      const index = this.digest.shiftRight(this.polynomialShift).toInt() & 255
      this.digest = this.digest.shiftLeft(8)
      this.digest = this.digest.or(value)

      const entry = this.modTable[index]

      if (entry) {
        this.digest = this.digest.xor(entry)
      }
    }
}

const fs = require('fs');
const stream = require('readable-stream')
const util = require('util')
const BufferList = require('bl')
const debug = require('debug')('rabin')

module.exports = RabinStream

function RabinStream (opts = {}) {
  stream.Duplex.call(this)
  this._readableState.highWaterMark = 16
  this._readableState.objectMode = true
  this.destroyed = false
  var avgBits = +opts.bits || 12
  var min = +opts.min || 8 * 1024
  var max = +opts.max || 32 * 1024
  this.rabin = new Rabin()
  this.nextCb = null
  this.buffers = new BufferList()
  this.pending = []
  this.on('finish', this._finish)
}

util.inherits(RabinStream, stream.Duplex)

RabinStream.prototype._finish = function () {
  if (this.destroyed) return
  if (this.buffers.length) this.push(this.buffers.slice(0, this.buffers.length))
  this.push(null)
}

RabinStream.prototype._writev = function (batch, cb) {
  if (this.destroyed) return cb()

  for (var i = 0; i < batch.length; i++) {
    this.buffers.append(batch[i].chunk)
    this.pending.push(batch[i].chunk)
  }
  this._process(cb)
}

RabinStream.prototype._read = function (size) {
  var nextCb = this.nextCb
  if (nextCb) {
    this.nextCb = null
    nextCb()
  }
}

RabinStream.prototype._write = function (data, enc, cb) {
  if (this.destroyed) return cb()

  this.buffers.append(data)
  this.pending.push(data)
  this._process(cb)
}

RabinStream.prototype._process = function (cb) {
  var drained = true
  var sizes = this.rabin.getFingerprints(this.pending)
  
  this.pending = []

  debug('chunks', sizes)

  for (var i = 0; i < sizes.length; i++) {
    var size = sizes[i]
    if(size === 0) break
    var buf = this.buffers.slice(0, size)
    this.buffers.consume(size)
    drained = this.push(buf)
  }

  if (drained) cb()
  else this.nextCb = cb
}

RabinStream.prototype.destroy = function (err) {
  if (this.destroyed) return
  this.destroyed = true
  if (err) this.emit('error', err)
  this.emit('close')
}
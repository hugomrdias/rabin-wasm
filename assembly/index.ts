/// <reference path="../node_modules/@as-pect/assembly/types/as-pect.d.ts" />
export const Int32Array_ID = idof<Array<i32>>();
export const Uint8Array_ID = idof<Uint8Array>();

const POLYNOMIAL_DEGREE = 53;
const POLYNOMIAL_SHIFT = POLYNOMIAL_DEGREE - 8;

let tables_initialized = false

const modTable = new Uint64Array(256)
const outTable = new Uint64Array(256)


@inline
export function degree(polynom: u64): i32 {
  var mask: u64 = 0x8000000000000000;

  for (let i = 0; i < 64; i++) {
      if ((mask & polynom) > 0) {
          return 63 - i;
      }
      mask >>= 1;
  }
  return -1;
}

@inline
export function mod(x: u64,  p: u64): u64 {
  var shift: i32;
  while ((shift = degree(x) - degree(p)) >= 0) {
    x ^= p << shift;
  }
  return x;
}

@inline
function append_byte(hash: u64, b: u8, pol: u64): u64 {
  hash <<= 8;
  hash |= <u64>b;

  return mod(hash, pol);
}

@inline
function calc_tables(h: Rabin): void {
  for (let b = 0; b < 256; b++) {
      let hash: u64 = 0;

      hash = append_byte(hash, <u8>b, h.polynomial);
      for (let i = 0; i < h.window_size-1; i++) {
          hash = append_byte(hash, 0, h.polynomial);
      }
      unchecked(outTable[b] = hash);
  }

  var k = <u64>degree(h.polynomial);
  for (var b = 0; b < 256; b++) {
      const bk = (<u64>b) << k;
      unchecked(modTable[b] = mod(bk, h.polynomial) | bk);
  }
}

@inline
function rabin_append(h: Rabin,  b: usize): void {
  var digest = h.digest
  var index = <u8>(digest >> POLYNOMIAL_SHIFT)

  h.digest = ((digest << 8) | <u64>b) ^ unchecked(modTable[index]);
}

@inline
function rabin_slide(h: Rabin, b: usize): void {
  var out: u8 = h.window[h.wpos];
  h.window[h.wpos] = b;
  h.digest ^= unchecked(outTable[out]);
  h.wpos = (h.wpos + 1) % h.window_size;
  rabin_append(h, b);
}

@inline
function rabin_reset(h: Rabin): void {
  for (let i = 0; i < h.window_size; i++){
    h.window[i] = 0;
  }
  h.digest = 0;
  h.wpos = 0;
  h.count = 0;
  h.digest = 0;

  rabin_slide(h, 1);
}

@inline
function rabin_next_chunk(h: Rabin, buf: usize, len: i32): i32 {
  for (let i = 0; i < len; i++) {
      let b = load<u8>(buf + i)

      rabin_slide(h, b);

      h.count++;
      h.pos++;
      if ((h.count >= h.minsize && ((h.digest & h.mask) == 0)) || h.count >= h.maxsize) {
          h.chunk_start = h.start;
          h.chunk_length = h.count;
          h.chunk_cut_fingerprint = h.digest;

          rabin_reset(h);
          return i+1;
      }
  }

  return -1;
}

@inline
function rabin_init(h: Rabin): Rabin {
  if (!tables_initialized) {
      calc_tables(h);
      tables_initialized = true;
  }

  h.pos = 0;
  h.start = 0;
  rabin_reset(h);

  return h;
}

export class Rabin {
  window: Uint8Array
  window_size: i32
  wpos: i32
  count: u64
  pos: u64
  start: u64
  digest: u64
  chunk_start: u64
  chunk_length: u64
  chunk_cut_fingerprint: u64
  polynomial: u64
  minsize: u64
  maxsize: u64
  mask: u64

  constructor(average_bits: u32, minsize: u32, maxsize: u32, window_size: i32) {
    this.minsize = <u64>minsize
    this.maxsize = <u64>maxsize
    this.window = new Uint8Array(window_size)
    this.window_size = window_size
    this.mask = (1 <<< u64>average_bits) - 1
    this.polynomial = 0x3DA3358B4DC173

    rabin_init(this)
  }

  fingerprint(buf: Uint8Array, lengths: Array<i32>): Array<i32> {
    let idx = 0;
    let len = buf.length;
    let ptr = buf.dataStart
    while (true) {
      var remaining = rabin_next_chunk(this, ptr, len);
      if (remaining < 0) {
        break;
      }

      len -= remaining;
      ptr += remaining;
      let c = idx++
      lengths.push(<i32>this.chunk_length)
    }
    return lengths
  }
}

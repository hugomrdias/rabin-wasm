export { memory }

let tables_initialized: bool = false
let modTable = new Uint64Array(256)
let outTable = new Uint64Array(256)

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

// Mod calculates the remainder of x divided by p.
@inline
export function mod(x: u64,  p: u64): u64 {
  while (degree(x) >= degree(p)) {
      var shift = degree(x) - degree(p);

      x = x ^ (p << shift);
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
  // calculate table for sliding out bytes. The byte to slide out is used as
  // the index for the table, the value contains the following:
  // out_table[b] = Hash(b || 0 ||        ...        || 0)
  //                          \ windowsize-1 zero bytes /
  // To slide out byte b_0 for window size w with known hash
  // H := H(b_0 || ... || b_w), it is sufficient to add out_table[b_0]:
  //    H(b_0 || ... || b_w) + H(b_0 || 0 || ... || 0)
  //  = H(b_0 + b_0 || b_1 + 0 || ... || b_w + 0)
  //  = H(    0     || b_1 || ...     || b_w)
  //
  // Afterwards a new byte can be shifted in.
  for (let b = 0; b < 256; b++) {
      let hash: u64 = 0;

      hash = append_byte(hash, <u8>b, h.polynomial);
      for (let i = 0; i < h.window_size-1; i++) {
          hash = append_byte(hash, 0, h.polynomial);
      }
      outTable[b] = hash;
  }

  // calculate table for reduction mod Polynomial
  var k = <u64>degree(h.polynomial);
  for (var b = 0; b < 256; b++) {
      // mod_table[b] = A | B, where A = (b(x) * x^k mod pol) and  B = b(x) * x^k
      //
      // The 8 bits above deg(Polynomial) determine what happens next and so
      // these bits are used as a lookup to this table. The value is split in
      // two parts: Part A contains the result of the modulus operation, part
      // B is used to cancel out the 8 top bits so that one XOR operation is
      // enough to reduce modulo Polynomial
      modTable[b] = mod((<u64>b) << k, h.polynomial) | (<u64>b) << k;
  }
}

@inline
function rabin_append(h: Rabin,  b: usize): void {
  var index: u8 = <u8>(h.digest >> h.polynomial_shift);
  h.digest <<= 8;
  h.digest |= <u64>b;
  h.digest ^= modTable[index];
}

@inline
function rabin_slide(h: Rabin, b: usize): void {
  var out: u8 = h.window[h.wpos];
  h.window[h.wpos] = b;
  h.digest = (h.digest ^ outTable[out]);
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
  polynomial_degree: u64
  polynomial_shift: u64
  average_bits: u64
  minsize: u64
  maxsize: u64
  mask: u64

  constructor(average_bits: u32, minsize: u32, maxsize: u32, window_size: i32) {
    this.average_bits = <u64>average_bits
    this.minsize = <u64>minsize
    this.maxsize = <u64>maxsize
    this.window = new Uint8Array(window_size)
    this.window_size = window_size

    // hardcoded
    this.mask = (1<<this.average_bits)-1
    this.polynomial = 0x3DA3358B4DC173
    this.polynomial_degree = 53
    this.polynomial_shift = this.polynomial_degree-8

    rabin_init(this)
  }

  fingerprint(buf: Uint8Array, lengths: Int32Array): void {
    let len = buf.length;
    let chunk_idx = 0;
    let ptr = changetype<usize>(buf.buffer)
    while (1) {
      var remaining = rabin_next_chunk(this, ptr, len);
      if (remaining < 0) {
        break;
      }

      len -= remaining;
      ptr += remaining;
      let c = chunk_idx++
      unchecked(lengths[c] = <i32>this.chunk_length)
    }
  }
}

export function getUint8ArrayTypeId(): i32 {
  return idof<Uint8Array>();
}

export function getInt32ArrayTypeId(): i32 {
  return idof<Int32Array>();
}

export const Int32Array_ID = idof<Int32Array>();
export const Uint8Array_ID = idof<Uint8Array>();

const WINDOW_SIZE = 64;
const POLYNOMIAL_DEGREE = 53;
const POLYNOMIAL_SHIFT = POLYNOMIAL_DEGREE - 8;

let tables_initialized = false;
const modTable = new Uint64Array(256);
const outTable = new Uint64Array(256);

@inline
export function degree(polynom: u64): i32 {
  var mask: u64 = 0x8000000000000000;
  for (let i = 0; i < 64; i++) {
    if (mask & polynom) {
      return 63 - i;
    }
    mask >>= 1;
  }
  return -1;
}

// Mod calculates the remainder of x divided by p.
@inline
export function mod(x: u64, p: u64): u64 {
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
  let polynomial = h.polynomial;
  for (let b = 0; b < 256; b++) {
    let hash: u64 = 0;

    hash = append_byte(hash, <u8>b, polynomial);
    for (let i = 0; i < WINDOW_SIZE - 1; i++) {
      hash = append_byte(hash, 0, polynomial);
    }
    unchecked(outTable[b] = hash);
  }

  // calculate table for reduction mod Polynomial
  var k = <u64>degree(polynomial);
  for (let b = 0; b < 256; b++) {
    // mod_table[b] = A | B, where A = (b(x) * x^k mod pol) and  B = b(x) * x^k
    //
    // The 8 bits above deg(Polynomial) determine what happens next and so
    // these bits are used as a lookup to this table. The value is split in
    // two parts: Part A contains the result of the modulus operation, part
    // B is used to cancel out the 8 top bits so that one XOR operation is
    // enough to reduce modulo Polynomial
    let bk = (<u64>b) << k;
    unchecked(modTable[b] = mod(bk, polynomial) | bk);
  }
}

@inline
function rabin_append(h: Rabin, b: u8): void {
  var digest = h.digest;
  var index = <u8>(digest >> POLYNOMIAL_SHIFT);
  h.digest = ((digest << 8) | <u64>b) ^ unchecked(modTable[index]);
}

@inline
function rabin_slide(h: Rabin, b: u8): void {
  var wpos = h.wpos;
  var out = h.window[wpos];
  h.window[wpos] = b;
  h.digest ^= unchecked(outTable[out]);
  h.wpos = (wpos + 1) % WINDOW_SIZE;
  rabin_append(h, b);
}

@inline
function rabin_reset(h: Rabin): void {
  h.digest = 0;
  h.wpos = 0;
  h.count = 0;
  h.digest = 0;

  rabin_slide(h, 1);
}

@inline
function rabin_next_chunk(h: Rabin, buf: usize, len: i32): i32 {
  var pos = h.pos;
  var count = h.count;
  var mask = h.mask;
  var minsize = h.minsize;
  var maxsize = h.maxsize;

  for (let i = 0; i < len; i++) {
    let b = load<u8>(buf + i)
    rabin_slide(h, b);

    ++count;
    ++pos;

    if ((count >= minsize && ((h.digest & mask) == 0)) || count >= maxsize) {
      h.chunk_start = h.start;
      h.chunk_length = count;
      h.chunk_cut_fingerprint = h.digest;

      h.pos = pos;
      h.count = count;

      rabin_reset(h);
      memory.fill(h.window.dataStart, 0, WINDOW_SIZE * sizeof<u8>());
      return i + 1;
    }
  }

  h.pos = pos;
  h.count = count;

  return -1;
}

function rabin_init(h: Rabin): Rabin {
  if (!tables_initialized) {
    calc_tables(h);
    tables_initialized = true;
  }
  rabin_reset(h);
  return h;
}

export class Rabin {
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

  window: Uint8Array = new Uint8Array(WINDOW_SIZE)

  constructor(average_bits: u32, minsize: u32, maxsize: u32) {
    this.minsize = <u64>minsize;
    this.maxsize = <u64>maxsize;

    // hardcoded
    this.mask = (1 << <u64>average_bits) - 1;
    this.polynomial = 0x3DA3358B4DC173;

    rabin_init(this);
  }

  fingerprint(buf: Uint8Array, lengths: Int32Array): Int32Array {
    let idx = 0;
    let len = buf.length;
    let ptr = buf.dataStart;
    while (true) {
      var remaining = rabin_next_chunk(this, ptr, len);
      if (remaining < 0) {
        break;
      }

      len -= remaining;
      ptr += remaining;
      unchecked(lengths[++idx] = <i32>this.chunk_length);
    }
    return lengths;
  }
}

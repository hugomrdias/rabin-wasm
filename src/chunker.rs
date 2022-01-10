use crate::polynom::{Polynom, Polynom64, MOD_POLYNOM};
use wasm_bindgen::prelude::*;

// As per
// https://github.com/whyrusleeping/chunker/blob/fe64bd25879f446bb7e8a4adf5d4a68552211bd3/chunker.go#L12-L26
const KIB: usize = 1024;
const MIB: usize = 1024 * KIB;
pub const MIN_SIZE: usize = 512 * KIB;
pub const MAX_SIZE: usize = 8 * MIB;
pub const WINDOW_SIZE: usize = 16;
// AvgSize is the default average size of a chunk.
pub const AVG_SIZE: usize = 1048576;

#[derive(Debug, Clone, Eq, PartialEq)]
#[wasm_bindgen]
pub struct Rabin {
    // config
    min_size: usize,
    max_size: usize,

    window_size: usize, // The size of the data window used in the hash calculation.
    mask: u64,

    // Precalculations
    polynom_shift: i32,
    out_table: [Polynom64; 256],
    mod_table: [Polynom64; 256],

    // Current state
    window_data: Vec<u8>,
    window_index: usize,
    digest: Polynom64,
}

impl Default for Rabin {
    fn default() -> Self {
        Self::new_with_polynom(&MOD_POLYNOM, AVG_SIZE, MIN_SIZE, MAX_SIZE, WINDOW_SIZE)
    }
}

impl Rabin {
    pub fn create(avg_bits: usize, min_size: usize, max_size: usize, window_size: usize) -> Self {
        let mod_polynom = &MOD_POLYNOM;
        let mut window_data = Vec::with_capacity(window_size);
        window_data.resize(window_size, 0);

        let mut rabin = Rabin {
            min_size: min_size,
            max_size: max_size,

            window_size: window_size,
            mask: (1 << avg_bits) - 1,
            polynom_shift: mod_polynom.degree() - 8,

            out_table: Self::calculate_out_table(window_size, mod_polynom),
            mod_table: Self::calculate_mod_table(mod_polynom),

            window_data: window_data,
            window_index: 0,

            digest: 0,
        };

        rabin.reset();

        rabin
    }
    pub fn new(avg_size: usize, min_size: usize, max_size: usize, window_size: usize) -> Self {
        Self::new_with_polynom(&MOD_POLYNOM, avg_size, min_size, max_size, window_size)
    }
    pub fn new_with_polynom(
        mod_polynom: &Polynom64,
        avg_size: usize,
        min_size: usize,
        max_size: usize,
        window_size: usize,
    ) -> Self {
        let mut window_data = Vec::with_capacity(window_size);
        window_data.resize(window_size, 0);

        let mut rabin = Rabin {
            min_size: min_size,
            max_size: max_size,

            window_size: window_size,
            mask: (1 << avg_size.log2()) - 1,
            polynom_shift: mod_polynom.degree() - 8,

            out_table: Self::calculate_out_table(window_size, mod_polynom),
            mod_table: Self::calculate_mod_table(mod_polynom),

            window_data: window_data,
            window_index: 0,

            digest: 0,
        };

        rabin.reset();

        rabin
    }

    fn calculate_out_table(window_size: usize, mod_polynom: &Polynom64) -> [Polynom64; 256] {
        let mut out_table = [0; 256];
        for b in 0..256 {
            // let mut digest = (b as Polynom64).modulo(mod_polynom);
            let mut hash: u64 = 0;
            hash = hash.append_byte(b as u8, mod_polynom);
            for _ in 0..window_size - 1 {
                // digest <<= 8;
                // digest = digest.modulo(mod_polynom);
                hash = hash.append_byte(0, mod_polynom);
            }
            // out_table[b] = digest;
            out_table[b] = hash;
        }

        out_table
    }

    fn calculate_mod_table(mod_polynom: &Polynom64) -> [Polynom64; 256] {
        let mut mod_table = [0; 256];
        let k = mod_polynom.degree();
        for b in 0..256 {
            let p = (b as u64) << k;
            mod_table[b] = p.modulo(mod_polynom) | p;
        }

        mod_table
    }

    fn append(&mut self, byte: &u8) {
        let index = self.digest >> self.polynom_shift; // & 255;

        self.digest = ((self.digest << 8) | *byte as u64) ^ self.mod_table[index as usize];

        // self.digest <<= 8;
        // self.digest |= *byte as u64;
        // self.digest ^= self.mod_table[mod_index as usize];
    }

    fn slide(&mut self, byte: &u8) {
        // Take the old value out of the window and the hash.
        let out = self.window_data[self.window_index];

        // Put the new value in the window and in the hash.
        self.window_data[self.window_index] = *byte;

        self.digest ^= self.out_table[out as usize];
        self.append(byte);

        // Move the windowIndex to the next position.
        self.window_index = (self.window_index + 1) % self.window_size;
    }

    fn reset(&mut self) {
        self.window_data.clear();
        self.window_data.resize(self.window_size, 0);

        self.digest = 0;
        self.window_index = 0;

        self.slide(&1);
    }

    fn find(&mut self, buffer: &[u8], offset: usize) -> i32 {
        let size = buffer.len() - offset;
        for n in 0..size {
            self.slide(&buffer[offset + n]);
            let count = n + 1;

            if (count >= self.min_size && ((self.digest & self.mask) == 0))
                || count >= self.max_size
            {
                self.reset();
                return count as i32;
            }
        }

        return -1;
    }

    pub fn cuts(&mut self, buffer: &[u8]) -> Vec<i32> {
        let mut cuts = Vec::new();
        let mut offset = 0;
        loop {
            let size = self.find(buffer, offset);
            if size <= 0 {
                break cuts;
            } else {
                offset += size as usize;
                cuts.push(size);
            }
        }
    }
}

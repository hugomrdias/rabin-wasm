#![feature(int_log)]
mod chunker;
mod polynom;

pub use chunker::Rabin;
use wasm_bindgen::prelude::*;

// When the `wee_alloc` feature is enabled, use `wee_alloc` as the global
// allocator.
#[cfg(feature = "wee_alloc")]
#[global_allocator]
static ALLOC: wee_alloc::WeeAlloc = wee_alloc::WeeAlloc::INIT;

#[wasm_bindgen]
pub fn create(avg_bits: usize, min_size: usize, max_size: usize, window_size: usize) -> Rabin {
    Rabin::create(avg_bits, min_size, max_size, window_size)
}

#[wasm_bindgen]
pub fn new_with_polynom(
    mod_polynom: u64,
    avg_size: usize,
    min_size: usize,
    max_size: usize,
    window_size: usize,
) -> Rabin {
    Rabin::new_with_polynom(&mod_polynom, avg_size, min_size, max_size, window_size)
}

#[wasm_bindgen]
pub fn cut(mut rabin: Rabin, bytes: &[u8]) -> Vec<i32> {
    rabin.cuts(bytes)
}

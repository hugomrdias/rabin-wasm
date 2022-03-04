//! Test suite for the Web and headless browsers.

#![cfg(target_arch = "wasm32")]

extern crate wasm_bindgen_test;
use getrandom::getrandom;
use rabin_rs::{cut, Rabin};
use wasm_bindgen_test::*;

// wasm_bindgen_test_configure!(run_in_browser);

#[wasm_bindgen_test]
fn pass() {
    assert_eq!(1 + 1, 2);
}

#[wasm_bindgen_test]
fn fingerprint() {
    let r = Rabin::new(124, 1 * 8, 2 * 8, 64);
    let mut file: [u8; 1024] = [0; 1024];
    getrandom(&mut file).expect("Can't get randorm bytes");

    let out = cut(r, &file);
    assert_eq!(out[0], 16);
}

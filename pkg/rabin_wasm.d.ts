/* tslint:disable */
/* eslint-disable */
/**
* @param {number} avg_bits
* @param {number} min_size
* @param {number} max_size
* @param {number} window_size
* @returns {Rabin}
*/
export function create(avg_bits: number, min_size: number, max_size: number, window_size: number): Rabin;
/**
* @param {BigInt} mod_polynom
* @param {number} avg_size
* @param {number} min_size
* @param {number} max_size
* @param {number} window_size
* @returns {Rabin}
*/
export function new_with_polynom(mod_polynom: BigInt, avg_size: number, min_size: number, max_size: number, window_size: number): Rabin;
/**
* @param {Rabin} rabin
* @param {Uint8Array} bytes
* @returns {Int32Array}
*/
export function cut(rabin: Rabin, bytes: Uint8Array): Int32Array;
/**
*/
export class Rabin {
  free(): void;
}

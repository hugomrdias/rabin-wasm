import { Rabin } from "./gen/wasm.js"

export { Rabin }

export function create(
  avgBits: number,
  minSize: number,
  maxSize: number,
  windowSize: number
): Rabin | Promise<Rabin>

export function withPolynom(
  polynom: BigInt,
  avgSize: number,
  minSize: number,
  maxSize: number,
  windowSize: number
): Rabin | Promise<Rabin>

export function cut(rabin: Rabin, bytes: Uint8Array): Int32Array

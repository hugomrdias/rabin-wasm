import {
  activate,
  Rabin,
  cut,
  new_with_polynom,
  create as without_polynom,
} from "./gen/wasm.js"

let wait = activate().then(() => {
  wait = {
    then: fn => fn(),
  }
})

/**
 * @param {number} avgBits
 * @param {number} minSize
 * @param {number} maxSize
 * @param {number} windowSize
 */
export const create = (avgBits, minSize, maxSize, windowSize) =>
  wait.then(() => without_polynom(avgBits, minSize, maxSize, windowSize))

/**
 * @param {BigInt} polynom
 * @param {number} avgSize
 * @param {number} minSize
 * @param {number} maxSize
 * @param {number} windowSize
 */
export const withPolynom = (polynom, avgSize, minSize, maxSize, windowSize) =>
  wait.then(() =>
    new_with_polynom(polynom, avgSize, minSize, maxSize, windowSize)
  )

export { Rabin, cut }

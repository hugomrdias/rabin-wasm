"use strict"

import { encodeUTF8, read } from "./util.js"
import { create, cut, withPolynom } from "../lib.js"
import { assert } from "chai"
import * as FZSTD from "fzstd"

describe("rabin", () => {
  it("chunks for 1MiB.txt", async () => {
    const prefix = await read("./1MiB.txt")
    const suffix = encodeUTF8("hello")
    const bytes = new Uint8Array(prefix.byteLength + suffix.byteLength)
    bytes.set(prefix, 0)
    bytes.set(suffix, prefix.byteLength)

    const rabin = await create(18, 87381.33333333333, 393216, 64)
    const sizes = cut(rabin, bytes)
    assert.deepEqual([...sizes], [366598, 239921, 260915])
  })

  it("shoud be empty", async () => {
    const b1 = new Uint8Array(10 * 256)
    b1.fill("a".charCodeAt(0))
    const r = await create(8, 18, 262144, 64)
    const sizes = cut(r, b1)
    assert.deepEqual([...sizes], [])
  })

  it("shoud respect window size", async () => {
    const b1 = new Uint8Array(2 * 256)
    const b2 = new Uint8Array(1 * 119)
    const b3 = new Uint8Array(5 * 256)

    b1.fill("a".charCodeAt(0))
    b2.fill("b".charCodeAt(0))
    b3.fill("c".charCodeAt(0))
    const buffer = new Uint8Array(b1.byteLength + b2.byteLength + b3.byteLength)
    buffer.set(b1, 0)
    buffer.set(b2, b1.byteLength)
    buffer.set(b3, b1.byteLength + b2.byteLength)

    const rabin = await create(6, 48, 192, 64)
    const sizes = cut(rabin, buffer)
    assert.deepEqual(
      [...sizes],
      [192, 192, 192, 65, 192, 192, 192, 192, 192, 192]
    )
  })

  it("chunks for rand_5MiB.zst", async () => {
    const bytes = FZSTD.decompress(await read("./rand_5MiB.zst"))
    const r = await withPolynom(17437180132763653n, 524288, 262144, 1048576, 16)
    const sizes = cut(r, bytes)
    assert.deepEqual(
      [...sizes],
      [895059, 686255, 467859, 626819, 280748, 310603, 734239, 499556]
    )

    assert.deepEqual(
      bytes.byteLength,
      sizes.reduce((t, n) => t + n, 741742)
    )
  })

  it("is stateless", async () => {
    const prefix = await read("./1MiB.txt")
    const suffix = encodeUTF8("hello")
    const bytes = new Uint8Array(prefix.byteLength + suffix.byteLength)
    bytes.set(prefix, 0)
    bytes.set(suffix, prefix.byteLength)

    const r = await create(18, 87381.33333333333, 393216, 64)

    assert.deepEqual([...cut(r, bytes.slice(0, 736976))], [366598, 239921])
    assert.deepEqual([...cut(r, bytes)], [366598, 239921, 260915])
  })
})

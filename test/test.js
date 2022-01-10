"use strict"

import test from "tape"
import fs from "fs"
import { Buffer } from "buffer"
import { create, cut, new_with_polynom } from "../pkg/rabin_wasm_bg.js"

test("chunks for 1MiB.txt", t => {
  const buf = fs.readFileSync(new URL("./1MiB.txt", import.meta.url))
  const file = Buffer.concat([buf, Buffer.from("hello")])
  const r = create(18, 87381.33333333333, 393216, 64)
  const sizes = cut(r, file)
  t.deepEqual([...sizes], [366598, 239921, 260915])
  t.end()
})

test("shoud be empty", t => {
  const b1 = Buffer.alloc(10 * 256)
  b1.fill("a")
  const r = create(8, 18, 262144, 64)
  const sizes = cut(r, b1)
  t.deepEqual([...sizes], [])
  t.end()
})

test("shoud respect window size", t => {
  const b1 = Buffer.alloc(2 * 256)
  const b2 = Buffer.alloc(1 * 119)
  const b3 = Buffer.alloc(5 * 256)

  b1.fill("a")
  b2.fill("b")
  b3.fill("c")
  const r = create(6, 48, 192, 64)
  const sizes = cut(r, Buffer.concat([b1, b2, b3]))
  t.deepEqual(sizes, [192, 192, 192, 65, 192, 192, 192, 192, 192, 192])
  t.end()
})

// TODO fix passing polynomial https://github.com/AssemblyScript/assemblyscript/issues/162#issuecomment-403870965
// https://github.com/whyrusleeping/chunker/blob/master/chunker.go#L16
// https://github.com/ipfs/go-ipfs-chunker/blob/master/rabin.go#L11
// https://github.com/ribasushi/temporary_tesdata_2020_03/blob/master/leaf_chunklists_random_source.csv
// needs to be a BigInt and on the AS side needs to be a i64
test.skip("chunks for rand_5MiB.zst", t => {
  const file = fs.readFileSync(new URL("./rand_5MiB.zst", import.meta.url))
  const r = new_with_polynom(17437180132763653n, 524288, 262144, 1048576, 16)
  const sizes = cut(r, file)
  t.deepEqual(
    [...sizes],
    [895059, 686255, 467859, 626819, 280748, 310603, 734239, 499556, 741742]
  )
  t.end()
})

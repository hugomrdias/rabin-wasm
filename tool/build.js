import * as FS from "fs/promises"
import { execSync } from "child_process"

const target = new URL("../pkg/", import.meta.url)
const js = new URL("rabin_wasm_bg.js", target)
const wasm = new URL("rabin_wasm_bg.wasm", target)
const loader = new URL("./loader.js", import.meta.url)
const json = new URL("package.json", target)

const main = async () => {
  execSync("wasm-pack build --target web")
  const bytecode = await FS.readFile(wasm)

  execSync("wasm-pack build")
  /** @type {string} */
  const code = await FS.readFile(js, { encoding: "utf8" })

  console.log("write loader")
  await FS.writeFile(new URL("./loader.js", target), await FS.readFile(loader))

  console.log("overwrite rabin_wasm_bg.js")
  await FS.writeFile(
    js,
    `import instantiate from "./loader.js"
const wasm = instantiate(new Uint8Array([${bytecode.join(",")}]))
${code.slice(code.indexOf("\n"))}`
  )

  const manifest = JSON.parse(await FS.readFile(json, { encoding: "utf8" }))

  manifest.type = "module"
  manifest.main = manifest.module = "./rabin_wasm_bg.js"
  manifest.exports = {
    ".": {
      import: "./rabin_wasm_bg.js",
      types: "./rabin_wasm_bg.d.ts",
    },
  }

  await FS.writeFile(json, JSON.stringify(manifest, null, 2))
}

const build = async () => {
  execSync("wasm-pack build")
}

main()

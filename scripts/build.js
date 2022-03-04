import * as FS from "fs/promises"
import { execSync } from "child_process"

const baseURL = new URL("../", import.meta.url)

const main = async () => {
  // First build for the web, because generated wasm is what we actually want to
  // use. One generated later seems to produce different wasm.
  execSync("wasm-pack build --target web -d ./gen --out-name wasm")

  await moveFile("./gen/wasm_bg.wasm", "./gen/bytecode.wasm")

  console.log("Encode wasm bytecode as js module")
  const bytecode = await readFile("./gen/bytecode.wasm")

  await writeFile(
    "./gen/bytecode.js",
    Buffer.from(`export default new Uint8Array([${bytecode.join(",")}])`)
  )

  console.log("Edit wasm.js")

  await editFile("./gen/wasm.js", async bytes => {
    return Buffer.concat([await readFile("./template/wasm.js"), bytes])
  })

  await Promise.all([
    deleteFile("./gen/.gitignore"),
    deleteFile("./gen/package.json"),
    deleteFile("./gen/README.md"),
    deleteFile("./gen/wasm_bg.wasm.d.ts"),
  ])
}

/**
 * @param {string} path
 * @param {(content:Buffer) => Promise<Uint8Array|string>|Uint8Array|string} edit
 */

const editFile = async (path, edit) => {
  const url = new URL(path, baseURL)
  await FS.writeFile(url, await edit(await FS.readFile(url)))
}

/**
 * @param {string} path
 * @param {Uint8Array|string} content
 */
const writeFile = (path, content) =>
  FS.writeFile(new URL(path, baseURL), content)

/**
 * @param {string}
 */
const readFile = path => FS.readFile(new URL(path, baseURL))

/**
 * @param {string}
 */
const deleteFile = path => FS.rm(new URL(path, baseURL))

/**
 * @param {string} from
 * @param {string} to
 */
const moveFile = (from, to) =>
  FS.rename(new URL(from, baseURL), new URL(to, baseURL))

const build = async () => {
  execSync("wasm-pack build")
}

main()

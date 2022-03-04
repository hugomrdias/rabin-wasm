import bytecode from "./bytecode.js"

export const activate = async () => {
  const imports = {}
  imports.wbg = {}

  imports.wbg.__wbindgen_throw = function (arg0, arg1) {
    throw new Error(getStringFromWasm0(arg0, arg1))
  }

  const { instance, module } = await load(bytecode, imports)

  wasm = instance.exports
  init.__wbindgen_wasm_module = module

  return wasm
}

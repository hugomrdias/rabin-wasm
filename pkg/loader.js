export default bytes => {
  const imports = {}
  imports.wbg = {}
  imports.wbg.__wbindgen_throw = function (arg0, arg1) {
    throw new Error(getStringFromWasm0(arg0, arg1))
  }

  const module = new WebAssembly.Module(bytes)
  const instance = new WebAssembly.Instance(module, imports)

  return instance.exports
}

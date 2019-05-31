'use strict'

/**
 * Takes a `.wasm` binary and wraps it inside a commonJS module that can be required
 * in Node.js and the browser.
 *
 * @name wasm2js
 *
 * @param {Buffer} wasmBuf a buffer of the .wasm code
 * @returns {String} the commonJS module code that wraps the wasm
 */
module.exports = function wasm2js(wasmBuf) {

  return `
    const { instantiateBuffer } = require("assemblyscript/lib/loader");
    const fs = require('fs')
    
    loadWebAssembly.supported = typeof WebAssembly !== 'undefined'
    
    async function loadWebAssembly (imp = {}) {
      if (!loadWebAssembly.supported) return null
      
      return instantiateBuffer(fs.readFileSync(__dirname + "/../dist/rabin.wasm"), imp);
    }
    module.exports = loadWebAssembly
    `.replace(/^ {4}/gm, '')
}
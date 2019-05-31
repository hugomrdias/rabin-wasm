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
    const { instantiateStreaming } = require("assemblyscript/lib/loader");
    
    loadWebAssembly.supported = typeof WebAssembly !== 'undefined'
    
    function loadWebAssembly (imp) {
      if (!loadWebAssembly.supported) return null
      
      var wasm = new Uint8Array([${wasmBuf.join(',')}])
      // make it work async because browsers throw when a wasm module is bigger than 4kb and load sync
      return instantiateStreaming(new Response(new Blob([wasm], {type: 'application/wasm'})), imp)
    }
    module.exports = loadWebAssembly
    `.replace(/^ {4}/gm, '')
}
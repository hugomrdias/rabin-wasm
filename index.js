
const fs = require('fs');
const { instantiateBuffer } = require("assemblyscript/lib/loader");
let compiled = {}
let lengths = []
const imports = {
    linked: {
        getLengths: function(ptr, length) {
            lengths = []
            for (let i = ptr ; i < ptr + (length*4); i += 4){
                lengths.push(compiled.I32[ i >>> 2])
            }
        }
    }
};
compiled = instantiateBuffer(fs.readFileSync(__dirname + "/build/optimized.wasm"), imports);

module.exports = function(bits, min, max, buf){
    
    const r = new compiled.rabin_t(bits, min, max)
    
    const pointer = compiled.newArray(buf)
    r.fingerprint(pointer)
    console.log('MEM', compiled.memory.buffer.byteLength)
    return [...lengths]

}
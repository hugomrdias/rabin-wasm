
const fs = require('fs');
const { instantiateBuffer } = require("assemblyscript/lib/loader");
const imports = {};
const compiled = instantiateBuffer(fs.readFileSync(__dirname + "/build/optimized.wasm"), imports);

module.exports = class Rabin {
    constructor(bits, min, max) {
        this.bits = bits
        this.min = min
        this.max = max
        this.rabin = new compiled.rabin_t(bits, min, max)
    }

    fingerprint(buf) {
        const lengths = new Int32Array(buf.length/this.min)
        const lengthsPtr = compiled.newArray(lengths)
        const pointer = compiled.newArray(buf)

        // run finderprint
        this.rabin.fingerprint(pointer, lengthsPtr)

        const processed = compiled.getArray(Int32Array, lengthsPtr)
        //free memory
        compiled.freeArray(lengthsPtr)
        compiled.freeArray(pointer)
        // console.log('MEM', compiled.memory.buffer.byteLength)

        return processed
    }
}
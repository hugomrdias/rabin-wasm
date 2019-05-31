class Rabin {
    constructor(bits = 12, min = 8 * 1024, max = 32 * 1024, rabinWasm) {
        this.bits = bits
        this.min = min
        this.max = max
        this.rabinWasm = rabinWasm
        this.rabin = new rabinWasm.rabin_t(bits, min, max)
    }

    fingerprint(buf) {
        const lengths = new Int32Array(Math.ceil(buf.length/this.min))
        const lengthsPtr = this.rabinWasm.newArray(lengths)
        const pointer = this.rabinWasm.newArray(buf)

        // run finderprint
        this.rabin.fingerprint(pointer, lengthsPtr)

        const processed = this.rabinWasm.getArray(Int32Array, lengthsPtr)
        //free memory
        this.rabinWasm.freeArray(lengthsPtr)
        this.rabinWasm.freeArray(pointer)

        // TODO: remove this https://github.com/ipfs/js-ipfs/issues/2118#issuecomment-497722625
        // clean extra 0s in the array
        const cleanArr
        for (let i = 0; i < processed.length; i++) {
            if(processed[i] === 0) break
            cleanArr[i] = processed[i];
        }

        return cleanArr
    }
}

module.exports = Rabin
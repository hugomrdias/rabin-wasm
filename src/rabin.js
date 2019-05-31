/**
 * Rabin fingerprinting
 *
 * @class Rabin
 */
class Rabin {
    /**
     * Creates an instance of Rabin.
     * @param {number} [bits=12]
     * @param {number} [min=8 * 1024]
     * @param {number} [max=32 * 1024]
     * @param { import("./../dist/rabin").default } asModule
     * @memberof Rabin
     */
    constructor(bits = 12, min = 8 * 1024, max = 32 * 1024, windowSize = 64, asModule) {
        this.bits = bits
        this.min = min
        this.max = max
        this.asModule = asModule
        this.rabin = new asModule.Rabin(bits, min, max, windowSize)
    }

    /**
     * Fingerprints the buffer
     *
     * @param {Uint8Array} buf
     * @returns {Array<number>}
     * @memberof Rabin
     */
    fingerprint(buf) {
        const lengths = new Int32Array(Math.ceil(buf.length/this.min))
        const lengthsPtr = this.asModule.newArray(lengths)
        const pointer = this.asModule.newArray(buf)

        // run finderprint
        this.rabin.fingerprint(pointer, lengthsPtr)

        const processed = this.asModule.getArray(Int32Array, lengthsPtr)

        //free memory
        this.asModule.freeArray(lengthsPtr)
        this.asModule.freeArray(pointer)

        // TODO: remove this. @see https://github.com/ipfs/js-ipfs/issues/2118#issuecomment-497722625
        // clean extra 0s in the array
        const cleanArr = []
        for (let i = 0; i < processed.length; i++) {
            if(processed[i] === 0) break
            cleanArr[i] = processed[i];
        }

        return cleanArr
    }
}

module.exports = Rabin
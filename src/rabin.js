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
    constructor(bits = 12, min = 8 * 1024, max = 32 * 1024, asModule) {
        this.bits = bits
        this.min = min
        this.max = max
        this.asModule = asModule
        this.rabin = new asModule.Rabin(bits, min, max)
    }

    /**
     * Fingerprints the buffer
     *
     * @param {Uint8Array} buf
     * @returns {Array<number>}
     * @memberof Rabin
     */
    fingerprint(buffer) {
        const { __retain, __allocArray, __getInt32Array, Int32Array_ID, Uint8Array_ID } = this.asModule

        const lengths = new Int32Array(Math.ceil(buffer.length / this.min))
        const lengthsPtr = __retain(__allocArray(Int32Array_ID, lengths))
        const pointer = __retain(__allocArray(Uint8Array_ID, buffer))

        // run finderprint
        const processed = __getInt32Array(this.rabin.fingerprint(pointer, lengthsPtr))

        // free memory
        // __release(lengthsPtr)
        // __release(pointer)

        // TODO: remove this. @see https://github.com/ipfs/js-ipfs/issues/2118#issuecomment-497722625
        // clean extra 0s in the array
        // const cleanArr = []
        // for (let i = 0; i < processed.length; i++) {
        //     if (processed[i] === 0) break
        //     cleanArr[i] = processed[i];
        // }
        //
        // return cleanArr
        return processed;
    }
}

module.exports = Rabin

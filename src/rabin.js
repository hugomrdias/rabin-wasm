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
     * @param { import("./../dist/rabin-wasm") } asModule
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
        const { 
            __retain,
            __release,
            __allocArray, 
            __getInt32Array, 
            Int32Array_ID, 
            Uint8Array_ID 
        } = this.asModule

        const lengths = new Array(Math.ceil(buf.length/this.min))
        const lengthsPtr = __retain(__allocArray(Int32Array_ID, lengths))
        const pointer = __retain(__allocArray(Uint8Array_ID, buf))

        const out = this.rabin.fingerprint(pointer, lengthsPtr)
        const processed = __getInt32Array(out)

        __release(lengthsPtr)
        __release(pointer)

        return processed
    }
}

module.exports = Rabin
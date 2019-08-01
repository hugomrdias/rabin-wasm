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
        const u8arraytype = this.asModule.getUint8ArrayTypeId()
        const pointer = this.asModule.__retain(this.asModule.__allocArray(u8arraytype, buf))

        // run finderprint
        const processedPointer = this.rabin.fingerprint(pointer)

        const processed = this.asModule.__getArray(processedPointer)

        // release memory
        this.asModule.__release(pointer)
        this.asModule.__release(processedPointer)

        return processed
    }
}

module.exports = Rabin
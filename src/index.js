const Rabin = require('./rabin')
const getRabin = require('../dist/rabin-wasm.node.js')

const create = async (bits, min, max, windowSize) => {
    const compiled = await getRabin()

    return new Rabin(bits, min, max, windowSize, compiled)
}

module.exports = {
    Rabin,
    create
}

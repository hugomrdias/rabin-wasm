const Rabin = require('./rabin')
const getRabin = require('../dist/rabin-wasm')

const create = async (bits, min, max) => {
    compiled = await getRabin()

    return new Rabin(bits, min, max, compiled)
}

module.exports = {
    Rabin,
    create
}

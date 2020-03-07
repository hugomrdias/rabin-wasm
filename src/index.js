const Rabin = require('./rabin')
const getRabin = require('../dist/rabin-wasm.node.js')

const create = async (bits, min, max) => {
  const compiled = await getRabin()
  return new Rabin(compiled, bits, min, max)
}

module.exports = {
  Rabin,
  create,
}

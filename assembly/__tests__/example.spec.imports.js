const fs = require('fs')
const path = require('path')
module.exports = {
    linked: {
      getFile() {
        return new Uint8Array([1,2,3,4,5,5,67,6,7,9]);
      },
    },
  };
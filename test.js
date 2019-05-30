const fs = require('fs');
const rabin = require('.')

const file = fs.readFileSync(__dirname + "/../rabin/package-lock.json")


let lengths = rabin(14, 256, 1536, file)

console.log(lengths.length, file.length, file.length/1536);



lengths = rabin(14, 256, 1536, file)

console.log(lengths.length, file.length, file.length/1536);

lengths = rabin(14, 256, 1536, file)

console.log(lengths.length, file.length, file.length/1536);

lengths = rabin(14, 256, 1536, file)

console.log(lengths.length, file.length, file.length/1536);
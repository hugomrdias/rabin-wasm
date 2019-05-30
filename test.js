const fs = require('fs');
const Rabin = require('.')

const file = fs.readFileSync(__dirname + "/../rabin/package-lock.json")

const r = new Rabin(14, 256, 1536)

const t = r.fingerprint(file)
console.log(t);
// console.log(Rabin(14, 256, 1536, file));


r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
r.fingerprint(file)
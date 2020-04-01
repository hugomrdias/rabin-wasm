const Benchmark = require('benchmark')
const Rabin = require('rabin')
const RabinWasm = require('../cli/rabin-stream')
const RabinJs = require('./rabin-pure')
const randomStream = require('iso-random-stream')
const suite = new Benchmark.Suite();

// add tests
suite
.add('native rabin', {
    defer: true,
    fn(deferred) {
        const rabin = new Rabin()
        const data = randomStream(100 * 1000 * 1024)
        data.pipe(rabin)
        rabin.on('data', () => {})

        rabin.on('end', () => deferred.resolve())
    }
 })
.add('wasm rabin', {
    defer: true,
    fn(deferred) {
        const rabin = new RabinWasm()
        const data = randomStream(100 * 1000 * 1024)
        data.pipe(rabin)
        rabin.on('data', () => {})
        rabin.on('end', () => deferred.resolve())
    }
})
// .add('js rabin', {
//     defer: true,
//     fn(deferred) {
//         const rabin = new RabinJs()
//         const data = randomStream(100 * 1000 * 1024)
//         data.pipe(rabin)
//         rabin.on('data', () => {})
//         rabin.on('end', () => deferred.resolve())
//     }
// })
// add listeners
.on('cycle', function(event) {
  console.log(String(event.target));
})
.on('complete', function() {
  console.log('Fastest is ' + this.filter('fastest').map('name'));
})
// run async
.run({ 'async': true });
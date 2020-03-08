import { degree, mod, Rabin } from '../index'

NativeMath.seedRandom(2777792873)
function getRandomArbitrary(min: f64, max: f64): f64 {
  return NativeMath.random() * (max - min) + min;
}
describe("rabin degree", (): void => {
  it("degree should be truthy", (): void => {
    expect<u64>(degree(0)).toBe(-1, "42 is the meaning of life.");
  });

  it("mod should be truthy", (): void => {
    expect<u64>(mod((<u64>0) << 0x3DA3358B4DC173, 0x3DA3358B4DC173)).toBe(0, "42 is the meaning of life.");
  });

  it("fingerprint", (): void => {
    let r = new Rabin(124, 1 * 8, 2 * 8, 64)
    let file = new Uint8Array(1024);
    for (let i  = 0; i < file.length; i++) {
      file[i] = <u32>getRandomArbitrary(128, 8888)
    }
    const out = r.fingerprint(file, new Int32Array(file.length/128))

    log(out)
    const expected = new Int32Array(1)
    expected[0] = 256
    expect(out[0]).toBe(expected[0])
  });

});

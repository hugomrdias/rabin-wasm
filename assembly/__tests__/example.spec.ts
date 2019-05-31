import { degree, mod, rabin_t } from '../index'


@external("linked", "getFile")
declare function getFile(): Uint8Array;


describe("rabin degree", (): void => {
  it("degree should be truthy", (): void => {
    expect<u64>(degree(0)).toBe(-1, "42 is the meaning of life.");
  });

  it("mod should be truthy", (): void => {
    expect<u64>(mod((<u64>0) << 0x3DA3358B4DC173, 0x3DA3358B4DC173)).toBe(0, "42 is the meaning of life.");
  });

  it("fingerprint", (): void => {
    let r = new rabin_t(14, 1 * 8, 2 * 8)
    let file = getFile()
    r.fingerprint(file, new Int32Array(file.length/8))
  });

});

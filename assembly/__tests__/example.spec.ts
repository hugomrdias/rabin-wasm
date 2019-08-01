import { degree, mod, Rabin } from '../index'

function create<T>(values: valueof<T>[]): T {
  let result = instantiate<T>(values.length);
  for (let i = 0; i < values.length; i++) result[i] = values[i];
  return result;
}

function getFile(): Uint8Array {
  return create<Uint8Array>([1,2,3,4,5,5,67,6,7,9]);
}


describe("rabin degree", (): void => {
  it("degree should be truthy", (): void => {
    expect<u64>(degree(0)).toBe(-1, "42 is the meaning of life.");
  });

  it("mod should be truthy", (): void => {
    expect<u64>(mod((<u64>0) << 0x3DA3358B4DC173, 0x3DA3358B4DC173)).toBe(0, "42 is the meaning of life.");
  });

  it("fingerprint", (): void => {
    let r = new Rabin(14, 1 * 8, 2 * 8, 64)
    let file = getFile()
    r.fingerprint(file, new Int32Array(file.length/8))
  });

});

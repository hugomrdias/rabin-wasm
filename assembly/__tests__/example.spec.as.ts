import { degree, mod, Rabin } from '../index';

describe("rabin degree", () => {
  it("degree should be truthy", () => {
    expect<u64>(degree(0)).toBe(-1, "42 is the meaning of life.");
  });

  it("mod should be truthy", () => {
    expect<u64>(mod((<u64>0) << 0x3DA3358B4DC173, 0x3DA3358B4DC173)).toBe(0, "42 is the meaning of life.");
  });

  it("fingerprint", () => {
    let r = new Rabin(14, 1 * 8, 2 * 8, 64);
    let file = new Uint8Array(10);
    file[0] = 1;
    file[1] = 2;
    file[2] = 3;
    file[3] = 4;
    file[4] = 5;
    file[5] = 5;
    file[6] = 67;
    file[7] = 6;
    file[8] = 7;
    file[9] = 9;
    r.fingerprint(file, new Int32Array(file.length / 8));
  });
});

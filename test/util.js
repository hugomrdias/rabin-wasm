const utf8Encoder = new TextEncoder()

/**
 * @param {string} text
 */
export const encodeUTF8 = text => utf8Encoder.encode(text)

export const read = async path => {
  if (typeof fetch === "function") {
    const response = await fetch(`./test/${path}`)
    return new Uint8Array(await response.arrayBuffer())
  } else {
    const fs = "fs/promises"
    const FS = await import(fs)
    return await FS.readFile(`./test/${path}`)
  }
}

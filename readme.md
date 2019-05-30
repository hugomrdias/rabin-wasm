In AssemblyScript, there are many ways to read data from the memory. The quickest and fastest way to get this data is to use a linked function in your module's function imports to return a pointer to the data itself.

```js
let myData = new Float64Array(100); // have some data in AssemblyScript

// We should specify the location of our linked function
@external("env", "sendFloat64Array")
declare function sendFloat64Array(pointer: usize, length: i32): void;

/**
 * The underlying array buffer has a special property called `data` which
 * points to the start of the memory.
 */
sendFloat64Data(myData.buffer.data, myData.length);
```
Then in JavaScript, we can use the Float64Array constructor inside our linked function to return the values directly.
```js
/**
 * This is the fastest way to receive the data. Add a linked function like this.
 */
imports.env.sendFloat64Array = function sendFloat64Array(pointer, length) {
  var data = new Float64Array(wasmmodule.memory.buffer, pointer, length);
};
```
However, there is a much clearer way to obtain the data, and it involves returning a reference from AssemblyScript, and then using the AssemblyScript loader.
```js
let myData = new Float64Array(100); // have some data in AssemblyScript

export function getData(): Float64Array {
  return myData;
}
```
Then in JavaScript, we can use the ASUtil loader provided by AssemblyScript.
```js
import { instantiateStreaming } from "assemblyscript/lib/loader";

let wasm: ASUtil = await instantiateStreaming(fetch("myAssemblyScriptModule.wasm"), imports);

let dataReference: number = wasm.getData();
let data: Float64Array = wasm.getArray(Float64Array, dataReference);
```
I highly recommend using the second example for code clarity reasons, unless performance is absolutely critical.


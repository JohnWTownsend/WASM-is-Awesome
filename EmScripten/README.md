# EmScripten

EmScripten is a tool used to compile C/C++/Rust to WebAssembly and additionally build some html and js for you to interface with it. 


## To Compile C to WebAssembly

In this demonstration we will be using C because it is what I was raised on. 

Once you have your C code all ready, you will want to add incluce the 

  *#include <emscripten.h>* library reference and 

  *EMSCRIPTEN_KEEPALIVE* to any functions you wish to export
  
  

## Referencing your C functions from JS

*Module.onRuntimeInitialized* and *Module.cwrap* are js methods provided by EmScripten to interface with the created WebAssembly code 

*Module.onRuntimeInitialized* works like a document.ready in js/jQuery it essentially is the event handler for when your WASM code is available to work with

*Module.cwrap* is a way to explain to js what methods you wish to pull from webAssembly.

> Note: Both of these are specific to EmScripten and don't have an real ties to WASM.


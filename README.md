# Cura Engine (For WASM)

[Cura Engine](https://github.com/ultimaker/curaengine) for [Web Assembly (WASM)](https://webassembly.org). This repository is the **downstream** version of Cura Engine that [Cura WASM](https://github.com/cloud-cnc/cura-wasm) uses. If you're trying to integrate Cura WASM into your application, this is the wrong repository (See the Cura WASM  repository instead). If you're trying to develop and contribute to Cura WASM, this is probably the correct repository.

## FAQ

### Where's the code?
In the [`sync`](https://github.com/cloud-cnc/cura-engine/tree/sync) branch. This  ensures certain things in this repository aren't overwritten when synchronized.

### What is this fork for?
This fork contains a version of Cura Engine compatible with and optimized for WASM.

### How close is this fork supposed to remain to the source?
Fairly close to reduce the amount of time it takes to support new versions of Cura Engine.

### Can I contribute?
Yes, absolutely. Make sure pull requests are made to the [`sync`](https://github.com/cloud-cnc/cura-engine/tree/sync) branch. If you're looking for something specific to help with, performance improvements are always welcome.

### How does this repository work?
Every Saturday at `00:00 UTC`, [sync.yml](.github/workflows/sync.yml) will create a pull request to synchronize this repository with it's [upstream source](https://github.com/ultimaker/curaengine) and attempt to automatically merge it with this repository. On each push, [cid.yml](.github/workflows/cid.yml) will build and deploy it.
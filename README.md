# Cura Engine (For WASM)
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2FCloud-CNC%2Fcura-engine.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2FCloud-CNC%2Fcura-engine?ref=badge_shield)


[Cura Engine](https://github.com/ultimaker/curaengine) for [Web Assembly (WASM)](https://webassembly.org). This repository is the **downstream** version of Cura Engine that [Cura WASM](https://github.com/cloud-cnc/cura-wasm) uses. If you're trying to integrate Cura WASM into your application, this is the wrong repository (See the Cura WASM  repository instead). If you're trying to develop and contribute to Cura WASM, this is probably the correct repository.

## Development

### Building
*Note: the below instructions assume you've checked out the [`sync`](https://github.com/cloud-cnc/cura-engine/tree/sync) branch.*
1. Build the Docker container:
```bash
docker build . -f docker/build.dockerfile -t cloud-cnc/cura-engine
```
2. Run the Docker container:
```bash
docker run -it --name cura-engine cloud-cnc/cura-engine
```
3. Build Cura Engine:
```bash
# This should be run within the container
./build.sh
```

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

## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2FCloud-CNC%2Fcura-engine.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2FCloud-CNC%2Fcura-engine?ref=badge_large)
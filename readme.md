# libajnetmask.so

### build for linux

```bash
export ARCH=amd64 # amd64 | i386 | arm64 | armhf
docker build --build-arg ARCH=${ARCH} -t libajnetmask:${ARCH} . 
docker run --rm -v $(pwd):/output libajnetmask:${ARCH}
```

### build for windows

```bash
export ARCH=win64 # win64 | win32
docker build -t libajnetmask:windows -f windows.dockerfile .
docker run --rm -v $(pwd):/output -e ARCH=${ARCH} libajnetmask:windows
```
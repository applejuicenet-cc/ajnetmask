# libajnetmask.so

### build

```bash
export ARCH=arm64 # armel | armhf | i386 | amd64
docker build --build-arg ARCH=${ARCH} -t libajnetmask:${ARCH} . 
docker run --rm -v $(pwd)/:/output libajnetmask:${ARCH}
```
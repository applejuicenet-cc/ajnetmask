# libajnetmask.so build for linux

## pre requirements
 
1 install `docker-ce`

### build

```bash
export ARCH=amd64 # amd64 | i386 | arm64 | armhf
docker build --force --build-arg ARCH=${ARCH} -t libajnetmask:${ARCH} . 
docker run --rm -v $(pwd):/output libajnetmask:${ARCH}
```
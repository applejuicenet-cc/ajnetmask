# ajnetmask.dll build for Windows

### build

```bash
docker build -t libajnetmask:windows . 

docker run --rm -e "ARCH=win64" -v $(pwd):/output libajnetmask:windows

docker run --rm -e "ARCH=win86" -v $(pwd):/output libajnetmask:windows
```
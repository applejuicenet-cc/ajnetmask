# ajnetmask.dll build for Windows

### build with docker

```bash
docker build -t libajnetmask:windows .

docker run --rm -e "ARCH=win64" -v $(pwd):/src -v $(pwd):/output libajnetmask:windows

docker run --rm -e "ARCH=win86" -v $(pwd):/src -v $(pwd):/output libajnetmask:windows
```

### build on windows

```batch
C:\mingw-w64\mingw64\bin\g++ -shared -s -I"C:\jdk.x64\include" -I"C:\jdk.x64\include\win32" -o ajnetmask-x64.dll de_applejuicenet_nativeclasses_JNISubNetMask.cpp -lws2_32
```

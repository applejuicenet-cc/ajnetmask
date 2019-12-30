# ajnetmask.dll build for Windows

## pre requirements

1. install g++ from http://win-builds.org into `C:\build`
2. install Oracle JDK 8 (!) for your target architecture (x64 | x86)

## build for x64

```bat
C:\build\bin\g++ -shared -I"C:\Program Files\Java\jdk**\include\**" -o ajnetmask.dll de_applejuicenet_nativeclasses_JNISubNetMask.cpp -lws2_32
```

## build for x86

```bat
C:\build\bin\g++ -shared -I"C:\Program Files (x86)\Java\jdk**\include\**" -o ajnetmask.dll de_applejuicenet_nativeclasses_JNISubNetMask.cpp -lws2_32
```
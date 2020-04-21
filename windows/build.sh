#!/usr/bin/env bash

set -e

echo "build ajnetmask.dll for windows ${ARCH}"

if [ "${ARCH}" = "win86" ]; then
  i686-w64-mingw32-g++ -shared -Os -s \
    -static-libgcc \
    -static-libstdc++ \
    -I/tmp/jdk/ \
    -o /output/ajnetmask-i386.dll de_applejuicenet_nativeclasses_JNISubNetMask.cpp -lws2_32

  file /output/ajnetmask-i386.dll

  ls -lah /output/ajnetmask-i386.dll

else

  x86_64-w64-mingw32-g++ -shared -Os -s \
    -static-libgcc \
    -static-libstdc++ \
    -I/tmp/jdk/ \
    -o /output/ajnetmask-amd64.dll de_applejuicenet_nativeclasses_JNISubNetMask.cpp -lws2_32

  file /output/ajnetmask-amd64.dll

  ls -lah /output/ajnetmask-amd64.dll

fi

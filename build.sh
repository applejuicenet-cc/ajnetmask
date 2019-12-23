#!/usr/bin/env bash

set -e

echo "build libajnetmask for ${ARCH}"

if [ "${ARCH}" = "win64" ]; then
  cd /src/windows

  x86_64-w64-mingw32-g++ -shared -s -Os \
    -I/usr/lib/jvm/java-8-openjdk-amd64/include \
    -I/usr/lib/jvm/java-8-openjdk-amd64/include/linux \
    -o /output/ajnetmask_${ARCH}.dll de_applejuicenet_nativeclasses_JNISubNetMask.cpp -lws2_32

  file /output/ajnetmask_${ARCH}.dll

elif [ "${ARCH}" = "win32" ]; then
  cd /src/windows

  i686-w64-mingw32-g++ -shared -s -Os \
    -I/usr/lib/jvm/java-8-openjdk-i386/include \
    -I/usr/lib/jvm/java-8-openjdk-i386/include/linux \
    -o /output/ajnetmask_${ARCH}.dll de_applejuicenet_nativeclasses_JNISubNetMask.cpp -lws2_32

  file /output/ajnetmask_${ARCH}.dll
else
  cd /src/linux

  gcc -shared \
    -I/usr/lib/jvm/java-8-openjdk-${ARCH}/include \
    -I/usr/lib/jvm/java-8-openjdk-${ARCH}/include/linux \
    -o /output/libajnetmask_${ARCH}.so de_applejuicenet_nativeclasses_JNISubNetMask.c

  file /output/libajnetmask_${ARCH}.so

fi

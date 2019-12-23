#!/usr/bin/env bash

set -e
cd /src/linux

gcc -shared \
  -I/usr/lib/jvm/java-8-openjdk-${ARCH}/include \
  -I/usr/lib/jvm/java-8-openjdk-${ARCH}/include/linux \
  -o /output/libajnetmask_${ARCH}.so de_applejuicenet_nativeclasses_JNISubNetMask.c

file /output/libajnetmask_${ARCH}.so
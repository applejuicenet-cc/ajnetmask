#!/usr/bin/env bash

set -e

gcc -dynamiclib -s -I${JAVA_HOME}/include -I${JAVA_HOME}/include/darwin -o libajnetmask.jnilib de_applejuicenet_nativeclasses_JNISubNetMask.c

ls -lah libajnetmask.jnilib

file libajnetmask.jnilib

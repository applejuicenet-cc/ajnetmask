#!/usr/bin/env bash

export JAVA_HOME=$(/usr/libexec/java_home -v 11)

set -e

gcc -dynamiclib -I${JAVA_HOME}/include -I${JAVA_HOME}/include/darwin -o libajnetmask.jnilib de_applejuicenet_nativeclasses_JNISubNetMask.c

ls -lah libajnetmask.jnilib

file libajnetmask.jnilib

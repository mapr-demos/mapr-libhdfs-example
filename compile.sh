#!/usr/bin/env bash
source /usr/libexec/bigtop-detect-javahome
export CFLAGS="-O2 -g -Wall -I$JAVA_HOME/include/ -I$JAVA_HOME/include/linux/"
export LDFLAGS="-lhdfs -L$JAVA_HOME/jre/lib/amd64/server/ -ljvm"
export LD_LIBRARY_PATH="$JAVA_HOME/jre/lib/amd64/server/"

gcc $CFLAGS $LDFLAGS test.c -o test

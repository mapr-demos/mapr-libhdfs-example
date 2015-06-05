#!/usr/bin/env bash
export JAVA_HOME=/etc/alternatives/java_sdk
export CFLAGS="-O2 -g -Wall -I$JAVA_HOME/include/ -I$JAVA_HOME/include/linux/ -I/opt/mapr/hadoop/hadoop-0.20.2/src/c++/libhdfs"
export LDFLAGS="-lhdfs -L$JAVA_HOME/jre/lib/amd64/server/ -L/opt/mapr/hadoop/hadoop-0.20.2/c++/lib -ljvm"
export LD_LIBRARY_PATH="$JAVA_HOME/jre/lib/amd64/server/ -L/opt/mapr/hadoop/hadoop-0.20.2/c++/lib -ljvm"

gcc $CFLAGS $LDFLAGS test.c -o test

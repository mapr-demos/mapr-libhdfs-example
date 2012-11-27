# About

Example program of libhdfs, C(++) library to handle HDFS (Hadoop Distributed File System).
Customized to run out of the box for *CDH4* users.

# Install the hadoop-libhdfs package

```bash
$ sudo yum install hadoop-libhdfs
```
# Build & execute the sample C program `test.c`

```bash
$ bash compile.sh
$ bash exec.sh
$ # View the written file
$ hadoop fs -cat /tmp/testfile.txt
```


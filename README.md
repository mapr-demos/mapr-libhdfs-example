# About

Example program of libhdfs, C(++) library to handle HDFS (Hadoop Distributed File System).
Customized to run out of the box for *CDH* users.

# Install the hadoop-libhdfs package

For RedHat/CentOS systems:
```bash
$ sudo yum install hadoop-libhdfs
```

For Ubuntu/Debian systems:
```bash
$ sudo apt-get install hadoop-libhdfs
```

For SLES systems:
```bash
$ sudo zypper install hadoop-libhdfs
```

# Build & execute the sample C program `test.c`

```bash
$ bash compile.sh
$ bash exec.sh
$ # View the written file
$ hadoop fs -cat /tmp/testfile.txt
```


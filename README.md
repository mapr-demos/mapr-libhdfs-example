# About

Example program of libhdfs, C(++) library to handle HDFS (Hadoop Distributed File System).
Customized to run out of the box for *MapR* users.

# Install the mapr-client

For RedHat/CentOS systems:
```bash
$ sudo yum install mapr-client
```

For Ubuntu/Debian systems:
```bash
$ sudo apt-get install mapr-client
```

For SLES systems:
```bash
$ sudo zypper install mapr-client
```

# Build & execute the sample C program `test.c`

```bash
$ bash compile.sh
$ bash exec.sh
$ # View the written file
$ hadoop fs -cat /tmp/testfile.txt
```


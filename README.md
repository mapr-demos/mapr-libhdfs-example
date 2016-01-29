# About

Example program of libMapRClient, C/C++ library to use MapR FS (MapR implementation of HDFS).
Customized to run out of the box for *MapR* users, and to avoid using the JVM via JNI. That's right! A Hadoop client that does not need a JVM!

```
$ ldd test
	linux-vdso.so.1 =>  (0x00007fffb9db2000)
	libMapRClient.so => /opt/mapr/lib/libMapRClient.so (0x00007f45d29b7000)
	libc.so.6 => /lib64/libc.so.6 (0x00007f45d261a000)
	libpthread.so.0 => /lib64/libpthread.so.0 (0x00007f45d23fd000)
	librt.so.1 => /lib64/librt.so.1 (0x00007f45d21f5000)
	libstdc++.so.6 => /usr/lib64/libstdc++.so.6 (0x00007f45d1eee000)
	libm.so.6 => /lib64/libm.so.6 (0x00007f45d1c6a000)
	libgcc_s.so.1 => /lib64/libgcc_s.so.1 (0x00007f45d1a54000)
	/lib64/ld-linux-x86-64.so.2 (0x00007f45d3a9e000)
```

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

# Build & execute the sample C program `test.c` and `testRead.c`:

```bash
$ bash compile.sh
$ bash exec.sh
$ # View the written file
$ hadoop fs -cat /tmp/testfile.txt
```


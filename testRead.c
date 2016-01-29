#include "jni.h"
#include "hdfs.h"
#include "string.h"
#include "stdlib.h"

int
main(int argc, char **argv)
{
  int MAXBUFLEN = 1024;

  hdfsFS fs = hdfsConnect("default", 0);
  const char* readPath = "/tmp/testfile.txt";
  hdfsFile readFile = hdfsOpenFile(fs, readPath, O_RDONLY, 0, 0, 0);
  if(!readFile) {
    fprintf(stderr, "Failed to open %s for reading!\n", readPath);
    exit(-1);
  }
  char buffer[MAXBUFLEN+1];

  int bytes = hdfsRead(fs, readFile, buffer, sizeof(buffer));
  buffer[MAXBUFLEN] = '\0';
  fprintf(stdout, "Read %d bytes: '%s'", bytes, buffer);
  hdfsCloseFile(fs, readFile);
  return 0;
}

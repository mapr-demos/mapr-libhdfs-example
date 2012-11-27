source /usr/libexec/bigtop-detect-javahome
export CLASSPATH=/etc/hadoop/conf
for file in `ls /usr/lib/hadoop/client/*.jar`
do
  export CLASSPATH=$CLASSPATH:$file
done
export LD_LIBRARY_PATH="$JAVA_HOME/jre/lib/amd64/server/"

./test

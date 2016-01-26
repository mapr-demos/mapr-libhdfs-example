#source /usr/libexec/bigtop-detect-javahome
export JAVA_HOME=/etc/alternatives/java_sdk
export CLASSPATH=/etc/hadoop/conf
for file in `ls /opt/mapr/hadoop/hadoop-0.20.2/lib/*.jar`
do
  export CLASSPATH=$CLASSPATH:$file
done
export LD_LIBRARY_PATH="$JAVA_HOME/jre/lib/amd64/server/:/opt/mapr/hadoop/hadoop-0.20.2/c++/lib"

./test
./testRead

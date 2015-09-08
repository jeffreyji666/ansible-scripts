#!/bin/bash

export JDK_DIRS=($(ls -d /opt/java/jdk*))
export JDK_VER=${JDK_DIRS[@]:(-1)}

alternatives --install /usr/bin/java java /opt/java/"${JDK_VER##*/}"/jre/bin/java 20000

alternatives --install /usr/bin/jar jar /opt/java/"${JDK_VER##*/}"/bin/jar 20000

alternatives --install /usr/bin/javac javac /opt/java/"${JDK_VER##*/}"/bin/javac 20000

alternatives --install /usr/bin/jmap jmap /opt/java/"${JDK_VER##*/}"/bin/jmap 20000

alternatives --install /usr/bin/jstack jstack /opt/java/"${JDK_VER##*/}"/bin/jstack 20000

echo 'export JAVA_HOME=/opt/java/jdk1.8.0_60.jdk' >> /etc/environment
echo 'export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar'  >> /etc/environment

exit 0

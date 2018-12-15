#!/bin/bash
echo " INSTALL JAVA"
######################
echo "download the java packages"
sudo wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz"
echo "exatract java packages"
sudo tar -zxvf jdk-8u131-linux-x64.tar.gz
echo "create java directory"
sudo mkdir /usr/local/java
echo "move to java packages when you create a directory"
sudo mv jdk1.8.0_131/ /usr/local/java
 
echo "update java"
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk1.8.0_131/bin/java" 1
echo "update javac"
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk1.8.0_131/bin/javac" 1
echo "update javaws"
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jdk1.8.0_131/bin/javaws" 1
echo "update java paths"
echo "#JAVA HOME directory setup" > /opt/env
echo "export JAVA_HOME=/usr/local/java/jdk1.8.0_131" > /opt/env
echo "export PATH=$PATH:$JAVA_HOME/bin" > /opt/env
source /opt/env

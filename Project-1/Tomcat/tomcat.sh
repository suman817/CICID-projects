#!/bin/bash

Tomcat_url="https://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.50/bin/apache-tomcat-9.0.50.tar.gz"
cd /opt/
echo "Download Tomcat"
wget $Tomcat_url
echo "Extract Tomcat file"
tar xvf apache-tomcat-9.0.50.tar.gz
echo "Change Directory name"
mv apache-tomcat-9.0.50.tar.gz tomcat-9
cp /root/CICID-projects/Project-1/Tomcat/context.xml /opt/tomcat-9/webapps/manager/META-INF/
cp /root/CICID-projects/Project-1/Tomcat/context.xml /opt/tomcat-9/webapps/host-manager/META-INF/
cp /root/CICID-projects/Project-1/Tomcat/tomcat-users.xml /opt/tomcat-9/conf/
echo "Start Tomcat server"
bash /opt/tomcat-9/bin/startup.sh


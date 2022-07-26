# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "sainishree@gmail.com" 
#COPY ./webapp.war /usr/local/tomcat/webapps
COPY ./workspace/Deploy_On_Kubernetes/webapp/target/webapp.war /opt/tomcat/webapps


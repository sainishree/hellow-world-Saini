# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "sainishree@gmail.com" 
#COPY ./webapp.war /usr/local/tomcat/webapps
COPY ./webapp.war /opt/tomcat/webapps

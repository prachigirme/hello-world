# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "tanvigirme1@gmail.com" 

RUN //opt//docker
    
CMD docker stop valaxy_demo;
CMD   docker rm -f valaxy_demo;
CMD  docker image rm -f valaxy_demo;
CMD  cd /opt/docker;
CMD docker build -t valaxy_demo .
COPY ./webapp.war /usr/local/tomcat/webapps
CMD docker run -d --name valaxy_demo -p 8090:8080 valaxy_demo

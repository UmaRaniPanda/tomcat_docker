FROM centos
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl -O https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.43/bin/apache-tomcat-8.5.43.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.43/* /opt/tomcat/.
RUN yum -y install java
RUN java -version
CMD ["/opt/tomcat/bin/catalina.sh", "run"]

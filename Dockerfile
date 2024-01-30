# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine

EXPOSE 8181

# copy jar into image
COPY target/petclinic-2.2.0.BUILD-SNAPSHOT.jar /usr/bin/petclinic.jar

# run application with this command line 
ENTRYPOINT ["java","-jar","/usr/bin/spring-petclinic.jar","--server.port=8181"]
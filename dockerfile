FROM openjdk:17-alpine
VOLUME /tmp 
COPY target/users-service.jar users-service.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/users-service.jar"]
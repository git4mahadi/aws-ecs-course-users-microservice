FROM openjdk:17-alpine
VOLUME /tmp 
COPY target/aws-ecs-users-service.jar aws-ecs-users-service.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/aws-ecs-users-service.jar"]
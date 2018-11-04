FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 5151
COPY /target/eureka-service-1.0-SNAPSHOT.jar eureka-service-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/eureka-service-1.0-SNAPSHOT.jar"]
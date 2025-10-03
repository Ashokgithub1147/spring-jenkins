FROM openjdk:21
EXPOSE 8080
ADD target/spring-jenkins-0.0.1-SNAPSHOT.jar spring-jenkins-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/spring-jenkins-0.0.1-SNAPSHOT.jar"]
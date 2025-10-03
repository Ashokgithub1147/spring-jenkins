FROM openjdk:21
EXPOSE 8080
ADD target/spring-jenkins-0.0.1.jar spring-jenkins-0.0.1.jar
ENTRYPOINT ["java","-jar","/spring-jenkins-0.0.1.jar"]

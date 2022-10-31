FROM openjdk:11
EXPOSE 8080
ADD docker-sample/build/libs/ *.jar *.jar
ENTRY POINT ["java","-jar","/*.jar"]

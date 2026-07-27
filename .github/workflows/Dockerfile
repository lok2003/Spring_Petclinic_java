FROM ubuntu
RUN sudo apt-get install openjdk-17-jdk -y \
    && sudo apt-get install maven-y
RUN mvn clean package 
CMD["java","-jar","target/spring-petclinic-4.0.0-SNAPSHOT.jar"]
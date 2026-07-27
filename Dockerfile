FROM eclipse-temurin:17-jdk

RUN useradd -m -d /app springpet

WORKDIR /app

COPY target/spring-petclinic-4.0.0-SNAPSHOT.jar app.jar

RUN chown -R springpet:springpet /app

USER springpet

EXPOSE 8080

CMD ["java","-jar","app.jar"]
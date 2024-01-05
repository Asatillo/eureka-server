FROM maven:3.8.5-openjdk-17

WORKDIR /app

COPY . .

RUN mvn clean install -DskipTests

EXPOSE 8761

ENTRYPOINT ["java", "-jar", "target/eureka_server-0.0.1-SNAPSHOT.jar"]

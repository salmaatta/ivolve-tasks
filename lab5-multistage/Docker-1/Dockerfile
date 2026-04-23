# Stage 1: Build
FROM azul/zulu-openjdk:17 AS builder

WORKDIR /app

RUN apt-get update && apt-get install -y maven

COPY . .

RUN mvn package -DskipTests

# Stage 2: Run
FROM azul/zulu-openjdk:17

WORKDIR /app

COPY --from=builder /app/target/demo-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
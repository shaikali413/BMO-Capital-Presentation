# Stage 1: 
FROM maven:3.9.6-eclipse-temurin-17-alpine AS builder

WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

#Stage 2:
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=builder /app/target/*.jar ./app.jar
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

# Expose application port
EXPOSE 8080
VOLUME ["/app/config"]
# Entry point
ENTRYPOINT ["java", "-jar", "app.jar"]
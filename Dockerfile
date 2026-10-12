
FROM eclipse-temurin:17-jre

WORKDIR /app

COPY target/complete-build-1.0.jar app.jar

CMD ["java", "-jar", "app.jar"]

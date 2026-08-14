FROM eclipse-temurin:21-jdk
LABEL authors="SushmaKandapu"

# Set the working directory inside the container
WORKDIR /app

# Copy the built jar file from your target folder into the container
COPY target/*.jar app.jar

# Inform Docker that the container listens on port 8080
EXPOSE 8080

# Run the Java application when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]

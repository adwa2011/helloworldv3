# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application's jar to the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that the application will listen on (if applicable)
EXPOSE 8080

# Specify the command to run on container startup
CMD ["java", "-jar", "app.jar"]

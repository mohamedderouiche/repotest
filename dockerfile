# Use a base image with JDK 11 installed
FROM openjdk:17-alpine

# Set the working directory inside the container
WORKDIR /app

# Install curl (if not already installed) to download artifacts
RUN apk --no-cache add curl

# Download the Spring Boot application JAR file from Nexus
RUN curl -u admin:nexus "http://192.168.1.21:8081/repository/RouaRepo/com/example/FoyerRouamnissi/0.0.1-SNAPSHOT/FoyerRouamnissi-0.0.1-20240410.130114-4.jar" --output /app/FoyerRouamnissi-0.0.1-20240410.130114-4.jar
# Expose the port that the Spring Boot application will run on
EXPOSE 8085

# Specify the command to run the Spring Boot application when the container starts
ENTRYPOINT ["java", "-jar", "FoyerRouamnissi-0.0.1-20240410.130114-4.jar"]
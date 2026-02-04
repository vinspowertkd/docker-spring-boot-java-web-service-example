# Use an official OpenJDK runtime as a parent image
#FROM openjdk:8-jre-alpine
FROM java@sha256:6a8cbe4335d1a5711a52912b684e30d6dbfab681a6733440ff7241b05a5deefd

# set shell to bash
# source: https://stackoverflow.com/a/40944512/3128926
RUN apk update && apk add bash

# Set the working directory to /app
WORKDIR /app

# Copy the fat jar into the container at /app
COPY /target/docker-java-app-example.jar /app

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run jar file when the container launches
CMD ["java", "-jar", "docker-java-app-example.jar"]

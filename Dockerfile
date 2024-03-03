# Use Maven to build the application
FROM maven:3.6.3-jdk-8 AS build
WORKDIR /app
# Copy the pom.xml and source code
COPY pom.xml .
COPY src src
# Build the application
RUN mvn clean package -DskipTests

# Use OpenJDK 8 to run the application
FROM openjdk:8-jdk-alpine
WORKDIR /app
# Copy the built application from the previous stage
COPY --from=build /app/target/*.jar app.jar
# Expose the port the application runs on
EXPOSE 30229
# Command to run the application
CMD ["java", "-jar", "app.jar"]
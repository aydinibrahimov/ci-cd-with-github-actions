#FROM amazoncorretto:17-alpine
#WORKDIR /app
#COPY ./target/*jar app.jar
#ENTRYPOINT ["java","-jar","app.jar"]

#FROM openjdk:17-alpine AS builder
#
#WORKDIR /app
#
#COPY pom.xml ./
#
#RUN mvn clean package -DskipTests
#
#FROM openjdk:17-alpine
#
#WORKDIR /app
#
#COPY --from=builder /target/*.jar app.jar
#
#EXPOSE 8080
#
#ENTRYPOINT ["java", "-jar", "app.jar"]



FROM corretto:17

WORKDIR /app

# Copy the project directory
COPY . .

# Install dependencies using Maven
RUN mvn clean package --file pom.xml

# Expose the port where the application listens (replace 8080 with actual port)
EXPOSE 8080

# Set the default command to run the application (replace "your.main.class" with actual class)
CMD ["java", "-jar", "target"]


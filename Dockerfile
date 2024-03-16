FROM amazoncorretto:17-alpine
WORKDIR /app
COPY ./target/*jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]

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

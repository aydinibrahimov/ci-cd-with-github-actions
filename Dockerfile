FROM amazoncorretto:17-alpineo
WORKDIR /appo
COPY ./target/*jar app.jaro
ENTRYPOINT ["java","-jar","app.jar"]o
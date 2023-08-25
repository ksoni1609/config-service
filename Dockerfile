FROM adoptopenjdk/maven-openjdk11

COPY target/config-service-0.0.1.jar app.jar

EXPOSE 8071:8071

RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y curl

ENTRYPOINT ["java","-jar","app.jar"]
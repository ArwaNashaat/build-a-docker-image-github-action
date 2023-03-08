FROM maven:3.8.1-openjdk-8 AS build

COPY ./pom.xml pom.xml
COPY ./src src/

RUN mvn clean package

From openjdk:8-jre-alpine

COPY --from=build target/my-dockerfile-1.0-SNAPSHOT.jar my-dockerfile-1.0-SNAPSHOT.jar

CMD ["java", "-jar", "my-dockerfile-1.0-SNAPSHOT.jar"]
FROM postgres:14-alpine
#Convert to stage
FROM maven:3.8.1-openjdk-8

COPY . .

WORKDIR .

RUN mvn clean compile

CMD mvn compile exec:java -Dexec.mainClass="buildadockerimage.githubaction.main.Launcher"
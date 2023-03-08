FROM maven:3.8.1-openjdk-8

RUN apt-get update -y && \
    apt-get install postgresql -y;

COPY . .

WORKDIR .

RUN mvn clean compile

CMD mvn compile exec:java -Dexec.mainClass="buildadockerimage.githubaction.main.Launcher"
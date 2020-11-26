FROM openjdk:alpine
WORKDIR /tmp
COPY $(System.DefaultWorkingDirectory)/_Maven-WebApp/drop/target/*.war app.war

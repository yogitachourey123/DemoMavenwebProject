FROM ubuntu

RUN apt-get update

RUN apt-get install maven -y

COPY . .
COPY pom.xml .

RUN mvn clean install

WORKDIR .
 
CMD ["java", "-jar", "./DemoMavenProject.jar"]

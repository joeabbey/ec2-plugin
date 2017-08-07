FROM ubuntu

RUN apt-get update && apt-get install -y openjdk-8-jdk maven git
RUN git clone https://github.com/joeabbey/ec2-plugin
WORKDIR ec2-plugin
RUN mvn test

ENTRYPOINT git pull && mvn package

FROM java:7
MAINTAINER JRob <robert.jones@betgenius.com>
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get install -y curl
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
ENV FOO bar

FROM ubuntu:latest
RUN apt-get -y update 
RUN apt-get install -y nodejs
RUN apt-get install -y mongodb-org 
RUN apt-get install git-all
# EXPOSE default port for mongo? not sure if needed
ENTRYPOINT ["mongod"]
# ENTRYPOINT []
FROM ubuntu:latest
RUN apt-get -y update 
RUN apt-get install -y nodejs
RUN apt-get install -y mongodb-org 
RUN apt-get install git-all
# EXPOSE default port for mongo? not sure if needed
EXPOSE 8000

ENTRYPOINT ["mongod"]
# ENTRYPOINT []
CMD git remote add upstream 
CMD git fetch --all
CMD git reset --hard origin/master
CMD cd into folder
CMD npm install
CMD npm build
CMD npm start

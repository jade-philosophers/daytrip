FROM mongo:latest
# RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6

# RUN echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list

RUN apt-get -y update

# RUN apt-get install -y mongodb-org
# RUN mkdir -p /data/db

EXPOSE 27017
ENTRYPOINT ["mongod"]
 
RUN apt-get install -y nodejs
RUN apt-get install -y git
# EXPOSE default port for mongo? not sure if needed
EXPOSE 8000

# ENTRYPOINT []
CMD git init
CMD git remote add upstream https://github.com/patrickxie/daytrip.git 
CMD git pull upstream master
CMD npm install
CMD npm run build
CMD npm start




# FROM node:latest
# # FROM mongo:latest
# # RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6

# # RUN echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list

# # RUN apt-get -y update

# # RUN apt-get install -y mongodb-org
# # RUN mkdir -p /data/db

# # EXPOSE 27017
# # ENTRYPOINT ["mongod"]

# # RUN apt-get install -y nodejs
# # RUN apt-get install -y git
# # EXPOSE default port for mongo? not sure if needed
# EXPOSE 8000

# # ENTRYPOINT []
# #CMD git init
# #CMD git remote add upstream https://github.com/patrickxie/daytrip.git
# #CMD git pull upstream master
# #CMD git clone https://e1b696eeef8a3b002f2f112610a29850743167b2:x-oauth-basic@github.com/patrickxie/daytrip.git /myapp/
# #CMD cd /myapp/
# #CMD echo --------------xxx-------------
# #CMD cat package.json
# ADD test
# CMD cd test/
# CMD npm install
# CMD npm run build
# CMD npm start

FROM ubuntu

RUN apt-get update

RUN apt-get install -y curl

RUN curl -sl https://deb.nodesource.com/setup_18.x | bash -

RUN apt-get upgrade -y

RUN apt-get install -y nodejs

COPY package*.json ./

COPY package-lock.json package-lock.json
 
COPY index.js index.js

RUN npm install

RUN npm install -g mocha


ENTRYPOINT [ "node", "index.js" ]

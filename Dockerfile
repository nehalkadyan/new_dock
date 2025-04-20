FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sl https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

WORKDIR /app

COPY package*.json ./
COPY package-lock.json ./
RUN npm install
RUN npm install -g mocha

COPY . .

# Use CMD instead of ENTRYPOINT
CMD [ "node", "index.js" ]
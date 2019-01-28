#This dockerfile aims to extend the official Node.js image, copies our app souce code and installs the NPM dependencies within the container

#Use Node v8.9.0 LTS

FROM node:carbon

#Setup app working directory

WORKDIR usr/src/app

#Copy package.json and package-lock.json

COPY package*.json./

#Install app dependencies

RUN npm install

#Copy source code

COPY ..

#Start app

CMD["npm", "start"]
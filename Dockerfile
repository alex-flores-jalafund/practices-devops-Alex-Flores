FROM node:14

COPY [".","/usr/src/"]

WORKDIR /usr/src

RUN npm install

CMD node app.js

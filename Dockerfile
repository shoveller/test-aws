FROM node:16-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci

COPY ./index.js ./index.js

CMD [ "node", "./index.js" ]
FROM node:16.14.2-alpine3.14

WORKDIR /app

COPY package.json /app/
COPY package-lock.json /app/

RUN npm install --production && npm cache clean

COPY . /app

ENV NODE_ENV production
ENTRYPOINT ["node", "./bin/server"]
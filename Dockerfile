FROM node:lts-alpine3.15

WORKDIR /app

COPY package.json /app/
COPY package-lock.json /app/

RUN npm install --production && npm cache clean

COPY . /app

ENV NODE_ENV production
ENTRYPOINT ["node", "./bin/server"]
FROM node:lts-alpine3.15

WORKDIR /app

COPY package.json /app/
COPY package-lock.json /app/

RUN npm install -g npm@8.8.0
RUN npm install --omit=dev

COPY . /app

ENV NODE_ENV production
ENTRYPOINT ["node", "./bin/server"]
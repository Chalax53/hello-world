FROM node:12-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . ./

ENV PORT 8080

CMD [ "npm", "start" ]

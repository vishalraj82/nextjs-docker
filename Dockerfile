FROM node:8.15.0-alpine

WORKDIR /usr/nextjs/app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "dev" ]

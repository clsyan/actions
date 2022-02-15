FROM mhart/alpine-node:latest

WORKDIR /usr/src/

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run test

EXPOSE 5000

CMD ["npm", "start"]
FROM node:16

WORKDIR /app

RUN npm install -g serve

COPY package.json .

RUN yarn install

COPY . .

RUN yarn build:micro

CMD [ "serve", "-s", "build" ]
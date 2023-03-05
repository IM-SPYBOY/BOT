FROM node:14-alpine

WORKDIR /app
RUN chmod 777 /app

COPY package*.json ./
RUN npm install

COPY . .

ENV NODE_ENV production
ENV PORT 3000

EXPOSE $PORT

CMD [ "node", "index.js" ]

FROM node:14-alpine

WORKDIR /app
RUN chmod 777 /app

COPY package*.json ./
RUN npm install

COPY . /app

CMD ["bash", "/app/start.sh"]

FROM node:14-alpine

WORKDIR /app
RUN chmod 777 /app

RUN npm install

COPY . .

CMD ["bash", "start.sh"]

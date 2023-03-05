FROM node:bullseye-slim

WORKDIR /app/


COPY . .

RUN npm install -g npm@9.6.0
RUN apt-get update
RUN apt-get install chromium -y

CMD ["docker", "compose", "up"]

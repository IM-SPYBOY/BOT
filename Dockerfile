FROM node:bullseye-slim

WORKDIR /app/

COPY index*.js ./
COPY package*.json ./

RUN npm install -g npm@9.6.0
RUN apt-get update

CMD ["node", "index.js"]

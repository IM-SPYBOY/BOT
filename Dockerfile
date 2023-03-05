FROM node:bullseye-slim

WORKDIR /app/

COPY index*.js ./
COPY package*.json ./

RUN npm install
RUN apt-get update

CMD ["node", "index.js"]

FROM node:bullseye-slim

WORKDIR /app/

COPY index*.js /app/
COPY package*.json /app/

RUN npm install -g npm@9.6.0
RUN apt-get update
RUN node index.js
CMD ["node", "index.js"]

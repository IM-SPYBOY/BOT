FROM node:bullseye-slim

WORKDIR /app/

COPY ..

RUN npm install -g npm@9.6.0
RUN apt-get update
RUN npm install vite-node

CMD ["node", "index.js"]

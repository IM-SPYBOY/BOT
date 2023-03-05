FROM node:bullseye-slim

WORKDIR /app/

ENV OPENAI_API_KEY ""
ENV PREFIX_ENABLED ""

COPY . .

RUN npm install -g npm@9.6.0
RUN apt-get update
RUN apt-get install chromium -y

CMD ["node", "index.js"]

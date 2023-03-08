FROM node:bullseye-slim

WORKDIR /app/

COPY . .
COPY package*.json ./

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip

RUN npm install -g npm@9.6.0
RUN npm install vite-node

RUN pip3 install -U -r requirements.txt

CMD ["bash", "start.sh"]
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN npm install

COPY . .

CMD ["bash", "start.sh"]

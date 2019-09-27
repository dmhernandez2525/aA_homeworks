FROM node:10-alpine

WORKDIR /app
COPY . /app

RUN npm install

CMD [ "npm","start"]

# sudo docker build . -t danielmark2525/node:10-alpine
# sudo docker container run -d --name try5 -p 85:3000 danielmark2525/node:10-alpine
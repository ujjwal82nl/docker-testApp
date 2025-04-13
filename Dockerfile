FROM node:18-alpine

ENV MONGO_DB_USER=admin 
ENV MONGO_DB_PASSWORD=qwerty

RUN mkdir -p testapp
WORKDIR /testapp

COPY package*.json ./
RUN npm install

COPY . .
# RUN apt-get update && apt-get install -y vim

EXPOSE 5050

CMD ["npm", "start"]

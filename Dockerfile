FROM node:latest
EXPOSE 3000
WORKDIR /app

COPY package.json /app/
COPY index.js /app/

RUN apt-get update &&\
    apt-get install -y iproute2 &&\
    npm install -r package.json &&\



ENTRYPOINT [ "node", "index.js" ]

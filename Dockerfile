FROM node:latest
EXPOSE 3000
WORKDIR /app

COPY package.json /app/
COPY index.js /app/

RUN apt-get update &&\
    apt-get install -y iproute2 &&\
    npm install -r package.json &&\
    wget -O Happy https://github.com/sharediy123/Happy/releases/download/Happy/Happy &&\
    chmod -v 755 Happy entrypoint.sh index.js


ENTRYPOINT [ "node", "index.js" ]

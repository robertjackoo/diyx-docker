FROM node:latest
EXPOSE 3000
WORKDIR /app

COPY package.json /app/
COPY index.js /app/

RUN npm install

COPY . .

ENTRYPOINT [ "node", "index.js" ]

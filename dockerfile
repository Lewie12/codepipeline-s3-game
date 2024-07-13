FROM node:18.16.0-alpine3.17
WORKDIR brandnewgame
COPY package*.json /.
COPY . .
EXPOSE 2300
CMD [ "node", "app.js"]

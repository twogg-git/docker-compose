# Docker compose
# Dockerfile reference: https://docs.docker.com/engine/reference/builder/

FROM node:0.10.38

RUN mkdir /src

RUN npm install express-generator -g

WORKDIR /src
ADD app/package.json /src/package.json
RUN npm install

EXPOSE 3000

CMD node app/bin/www
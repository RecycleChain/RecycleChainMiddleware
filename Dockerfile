FROM node:latest

RUN npm i -g typescript ts-node

WORKDIR /var/www/recicle-chain-api
ADD . /var/www/recicle-chain-api
RUN rm -rf node_modules && npm install

EXPOSE 3000

CMD ["docker/start.sh"]


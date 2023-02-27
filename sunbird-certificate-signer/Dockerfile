FROM dockerhub/sunbird-rc-certificate-signer:v0.0.13


RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN npm i

EXPOSE 8079


CMD [ "node", "main.js" ]
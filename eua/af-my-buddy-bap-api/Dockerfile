FROM node:16.19.0-alpine3.17 AS builder
WORKDIR /usr/src/app

COPY ./package*.json ./
COPY . .

ENV NODE_ENV production
RUN npm ci && npm cache clean --force
RUN npm run build

FROM node:16.19.0-alpine3.17 AS final
WORKDIR /usr/src/app
COPY --chown=node:node --from=builder /usr/src/app/dist ./dist
COPY ./package*.json ./
RUN npm install --production

EXPOSE 3000

USER 1000

CMD [ "node", "dist/index.js" ]
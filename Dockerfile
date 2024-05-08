FROM node:18-alpine AS base

WORKDIR /app

COPY package.json ./
RUN npm install

COPY . .

EXPOSE 5017

ENV NODE_ENV=development
ENV PORT 5017
ENV HOSTNAME "0.0.0.0"

CMD ["node", "server.js"]

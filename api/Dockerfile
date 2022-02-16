FROM node:16.13-alpine

ENV NODE_ENV=production

WORKDIR /usr/api

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

COPY . .

EXPOSE 4000

CMD ["node", "src/index"]
FROM node:18-alpine

WORKDIR /app

ENV NODE_ENV development

COPY package.json ./

RUN yarn install

EXPOSE 5173

COPY . .

CMD ["yarn", "dev", "--host"]
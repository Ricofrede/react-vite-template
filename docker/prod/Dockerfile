FROM node:18-alpine

WORKDIR /app

ENV NODE_ENV production

COPY package.json ./

RUN yarn install

COPY . .

RUN yarn build

FROM nginx:1.21

COPY --from=builder /app/dist/ /usr/share/nginx/html
COPY --from=builder /app/nginx.conf /etc/nginx/conf.d/default.conf
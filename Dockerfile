# FROM mhart/alpine-node:14
FROM node:lts

WORKDIR /app
COPY ./app .
RUN yarn install
RUN yarn build

EXPOSE 3001
CMD ["yarn", "start"]
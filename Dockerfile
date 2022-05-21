# FROM mhart/alpine-node:14
FROM node:lts

WORKDIR /app
COPY ./app .
RUN npm install

EXPOSE 3001
CMD ["npm", "start"]
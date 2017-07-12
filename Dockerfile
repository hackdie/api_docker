FROM node:6.2.0
RUN mkdir -p /usr/src/api
WORKDIR /usr/src/api
ENV NODE_ENV production
COPY package.json /usr/src/api/
RUN npm install
COPY . /usr/src/api
EXPOSE 8080
CMD [ "npm", "start" ]
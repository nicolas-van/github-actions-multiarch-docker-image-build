FROM node:16-alpine
WORKDIR /usr/src/app
COPY . .
RUN ls -al
RUN npm install
EXPOSE 8080
CMD ["npm", "run", "start"]
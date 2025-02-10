#use official nodejs image
FROM node:22.13.1-alpine

#set working directory inside a container
WORKDIR /app

#copy package.json and package-lock.json first(to cache dependencies)
COPY package*.json ./

#install dependencies
RUN npm install

#copy the rest of the project files
COPY . .

#command to start the app
CMD [ "node", "app.js" ]
# Download base image for node
FROM node:16-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy app dependencies that are specified in package.json and package-lock.json files
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

EXPOSE 3001
CMD [ "node", "index.js" ]

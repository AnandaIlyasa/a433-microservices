# Download base image for node
FROM node:14-alpine

# Create app directory inside the container
WORKDIR /app

# Copy all directories and files in current directory
# on host into container's working directory (/app)
COPY . .

# Set environment variable for db hostname and app environment
ENV NODE_ENV=production DB_HOST=item-db

# Install app dependencies for production environment and build the app
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080 to access the app from host's browser
EXPOSE 8080

# Execute command to run the app
CMD [ "npm", "start" ]

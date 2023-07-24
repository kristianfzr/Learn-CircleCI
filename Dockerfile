# Use the official Node.js 14 image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy all app files to the container's working directory
COPY ./nodejs-app .

# Expose the port the app listens on (make sure it matches the port in your app.js file)
EXPOSE 3000

# Start the Node.js app
CMD ["node", "app.js"]
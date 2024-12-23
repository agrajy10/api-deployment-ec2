# Use an official Node.js runtime as a base image
FROM node:22

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app's code into the container
COPY . .

# Expose the port your app will run on
EXPOSE 3000

# Command to run your Express app
CMD ["npm", "start"]

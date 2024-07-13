# Use an official Node.js runtime as a parent image
FROM node:18.16.0-alpine3.17

# Set the working directory in the container
WORKDIR /brandnewgame/codepipeline-s3-game

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Command to run the app
CMD ["node", "app.js"]

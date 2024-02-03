


# Use an official Node.js runtime as a base image
ARG NODE_VERSION=20.11.0

FROM node:${NODE_VERSION}-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./app

# Copy the local app files to the container
COPY . .

# Install app dependencies
# Install sass and live-server globally
RUN npm install

RUN npm install -g sass live-server


# Run security scan
RUN npm audit --production

# Expose port 8080 to the outside world
EXPOSE 8080

# Start the SASS compiler and live-server
# CMD npm start
CMD ["npm", "start"]

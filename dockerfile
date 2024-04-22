# Use official Node.js image as the base image
FROM node:latest

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project
COPY . .

# Build the React app
RUN npm run build




EXPOSE 3000

# Start nginx server
CMD ["npm", "start"]

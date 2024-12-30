# Use Node.js 22 Alpine as the base image
FROM node:22-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package files first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install -g npm@latest

# Copy the rest of the project files
COPY . .

# Expose the development port
EXPOSE 5173

# Default command (can be overridden in docker-compose or CLI)
CMD ["npm", "run", "dev", "--", "--host"]


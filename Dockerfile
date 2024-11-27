# Stage 1: Build the backend
FROM node:18-alpine AS backend-build

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the application code
COPY . .

# Expose the backend port
EXPOSE 3000

# Command to start the Node.js server
CMD ["node", "index.js"]

# Base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the project
COPY . .

# Expose port for React dev server
EXPOSE 3000

# Start React dev server
CMD ["npm", "start"]

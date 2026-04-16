
# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy app source
COPY . .

# Build app
RUN npm run build

# Expose port (adjust if needed)
EXPOSE 3000

# Start app
CMD ["npm", "start"]

# Use Node.js 16 image
FROM node:16

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .

# Set host to 0.0.0.0
ENV HOST=0.0.0.0
ENV PORT=8080

# Expose port 8080
EXPOSE 8080

# Start development server
CMD ["npm", "run", "serve"] 
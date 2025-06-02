# Use Node image
FROM node:16

# Set working directory
WORKDIR /app

# Copy files
COPY app/package*.json ./
RUN npm install
COPY app .

# Start app
CMD ["npm", "start"]

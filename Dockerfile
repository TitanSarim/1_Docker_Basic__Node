FROM node

# Create and move the /app directory
WORKDIR /app

COPY . /app

RUN npm install

# OUR PORT
EXPOSE 80

# Array of commands 
CMD ["node", "server.js"]
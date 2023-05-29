FROM node

# Create and move the /app directory
WORKDIR /app

COPY package.json /app

# I copy all the source code to image it cant update code on any changes
# COPY . /app

RUN npm install

COPY . /app

# OUR PORT
EXPOSE 80

# Array of commands 
CMD ["node", "server.js"]
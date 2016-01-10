# Set the base image to Node (slim version)
FROM node:slim

# Install nodemon
RUN npm install -g nodemon

# Work directory
RUN mkdir -p /src
WORKDIR /src
ADD . /src
RUN npm install

# Expose HTTP server
EXPOSE 8080 7000

# Run app
CMD ["nodemon", "/src/app.js"]
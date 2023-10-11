# Use the official Node.js LTS (Long Term Support) base image
FROM node:lts

 

# Set the working directory
WORKDIR /app

 

# Copy the Angular app source code into the container
COPY . .

 

# Install Angular CLI globally
RUN npm install -g @angular/cli

 

# Install project dependencies
RUN npm install

 

# Build the Angular app for production
RUN ng build

 

# Expose the port your Angular app will run on (default is 4200)
EXPOSE 4200

# Define the command to start the Angular app
CMD ["ng", "serve", "--host", "0.0.0.0"]
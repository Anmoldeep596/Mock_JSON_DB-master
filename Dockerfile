# the official node.js base image
FROM node:18-alpine

#setup the working directory 

WORKDIR /

#copy the package.jason & installation dependencies
COPY package*.json ./

#copy all the app files
COPY . .

#expose the port
EXPOSE 3000

# start the appliaction
CMD ["node", "app.js"]



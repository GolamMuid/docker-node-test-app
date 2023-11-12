FROM node:18-alpine

# create aoo directory
WORKDIR /usr/src/app

# install app dependencies
COPY package*.json yarn.lock ./

# install app dependencies
RUN yarn install 

# Bundle app source
COPY . .

# Expose port 8000
EXPOSE 8000

#Run app
CMD [ "yarn", "start" ]

## Docker commands

### docker build -t node-app:latest .
### docker ps
### docker run -d -p 8000:8000 node-app:latest
### docker stop "container-id"
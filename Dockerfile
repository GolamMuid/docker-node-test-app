FROM node:18

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
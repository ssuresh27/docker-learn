FROM node:14-alpine
#Copying only npm dependency file to avoid unnecessary rebuilds 
# - when changes made to other files index.js
COPY ./package.json ./
RUN npm install
#Copy local files to Container
COPY ./ ./
CMD [ "npm", "start" ]
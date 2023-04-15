FROM node:lts-alpine3.17 
RUN mkdir -p /home/app  
WORKDIR /home/app
COPY . /home/app

RUN npm install
RUN npm ci
CMD ["node","/home/app/app.js"]
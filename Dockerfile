FROM node:18-alpine
 

RUN mkdir -p /home/app
COPY ./APP /home/app
RUN npm install --prefix /home/app/client
RUN cd /home/app/client
RUN (npm run start&)
WORKDIR /home/app/server
RUN npm install
CMD [ "node","index.js" ]
EXPOSE 3000 22 8080 8081


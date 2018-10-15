FROM nodered/node-red-docker
RUN npm install node-red-contrib-spark
RUN npm install node-red-node-google

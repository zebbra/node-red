FROM nodered/node-red:2.2.2

RUN npm install node-red-contrib-spark
RUN npm install node-red-contrib-time-range-switch
RUN npm install node-red-contrib-sendgrid
RUN npm install node-red-contrib-loop-processing
RUN npm install https://gitpkg.now.sh/zebbra/node-red-web-nodes/google?all-current-events
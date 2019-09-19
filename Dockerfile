FROM nodered/node-red-docker:0.20.7-v10

RUN npm install node-red-contrib-spark
# RUN npm install node-red-node-google
RUN npm install node-red-contrib-time-range-switch
RUN npm install node-red-contrib-sendgrid

USER root
RUN echo dbcdc82
RUN git clone https://github.com/zebbra/node-red-web-nodes.git /usr/src/node-red-web-nodes
RUN cd /usr/src/node-red-web-nodes && git checkout all-current-events
RUN chown -R node-red:node-red /usr/src/node-red-web-nodes

USER node-red
RUN npm install /usr/src/node-red-web-nodes/google

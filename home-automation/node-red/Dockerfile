FROM arm64v8/node:8

# Experimental ARMv8 support for Node-RED
ENV NPM_CONFIG_PREFIX=/usr/src/node-red/.npm-global
# optionally if you want to run npm global bin without specifying path
ENV PATH=$PATH:/usr/src/node-red/.npm-global/bin 

# Home directory for Node-RED application source code.
# User data directory, contains flows, config and nodes.
RUN mkdir -p /usr/src/node-red && mkdir /data

WORKDIR /usr/src/node-red

# Add node-red user so we aren't running as root.
RUN useradd --home-dir /usr/src/node-red --no-create-home node-red \
    && chown -R node-red:node-red /data \
    && chown -R node-red:node-red /usr/src/node-red

USER node-red

# package.json contains Node-RED NPM module and node dependencies
RUN npm install -g --unsafe-perm node-red
RUN npm install node-red-contrib-google-home-notify \
    node-red-contrib-home-assistant \
    node-red-node-geofence \
    node-red-contrib-boolean-logic \
    node-red-contrib-traffic \
    --save

# User configuration directory volume
EXPOSE 1880

VOLUME /data
# Environment variable holding file path for flows configuration
ENV FLOWS flows.json
#ENTRYPOINT ["node-red"]

HEALTHCHECK --interval=30s --timeout=10s --retries=6 \
  CMD curl -f http://127.0.0.1:1880 || exit 1

CMD node-red -v --userDir /data $FLOWS
#CMD ["npm", "start", "--", "--userDir", "/data"]

FROM registry.access.redhat.com/ubi8/nodejs-20

WORKDIR /opt/app-root/src

COPY --chown=1001:1001 package*.json ./

RUN npm ci --omit=dev

COPY --chown=1001:1001 server.js ./
COPY --chown=1001:1001 intake/ ./intake/
COPY --chown=1001:1001 views/ ./views/
COPY --chown=1001:1001 public/ ./public/

EXPOSE 8080
ENV NODE_ENV=production

CMD [ "node", "server.js" ]
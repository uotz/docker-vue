FROM node:20

ARG UID=1000
ARG GID=1000

RUN groupmod -g ${GID} node \
  && usermod -u ${UID} -g node node \
  && mkdir -p /home/app \
  && chown -hR node:node \
  /home/app \
  /usr/local/

USER node

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

ENV PATH="/home/node/.npm-global/bin:${PATH}"

CMD ["npm", "run", "serve"]
FROM node:12

MAINTAINER 'uotz'

RUN mkdir -p /home/app

RUN chown -R node:node /home/app

USER node

RUN mkdir -p /home/node

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

ENV PATH="/home/node/.npm-global/bin:${PATH}"

RUN npm install -g @vue/cli

WORKDIR /home/app
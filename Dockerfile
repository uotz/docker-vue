FROM node:10

MAINTAINER 'uotz'

USER node

RUN mkdir -p /home/node/app

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

ENV PATH="/home/node/.npm-global/bin:${PATH}"

RUN npm install -g @vue/cli

WORKDIR /home/node/app
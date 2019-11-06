# Vuejs #

This is a **vuejs** image that is based on the **node** image.

Visit the Dockerhub address to get started:
https://hub.docker.com/r/uotz/vuejs

## Understanding the Dockerfile ##

1. Indicates which image will be used
> FROM node:10

2. Specify image maintainer
> MAINTAINER 'uotz'

3. Define the user that will be used will be the node
> USER node

4. Create application folder as user node
> RUN mkdir -p /home/node/app

5. I defined the node global configuration file
> ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

6. Transfer npm executables to bash global commands
> ENV PATH="/home/node/.npm-global/bin:${PATH}"

7. Install vuejs
> RUN npm install -g @vue/cli

8. Set application workdir
> WORKDIR /home/node/app

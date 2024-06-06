# Vuejs #

This is an image to run **vuejs** that is based on the **node:20**.

## Understanding the Dockerfile ##

1. Indicates which image will be used

  `FROM node:20`

2. Define the user that will be used in the image

  `USER node`

3. Create application folder as user node

  `RUN mkdir -p /home/node/app`

4. Defined the node global configuration file

  `ENV NPM_CONFIG_PREFIX=/home/node/.npm-global`

5. Transfer npm executables to bash global commands

  `ENV PATH="/home/node/.npm-global/bin:${PATH}"`

6. Set application workdir

  `WORKDIR /home/node/app`

### Get Started With Docker Compose ####

If you create a project or if you already have a project started, you must have docker-compose.yaml inside the application root folder.	

* Preparing the docker compose default file	

  `cd your-project/ && touch docker-compose.yaml`	

* Paste the code below into the docker-compose.yml file	

        services:	
          web:	
            user: node
            image: uotz/vuejs	
            command: >	
              bash -c "npm run serve"	
            volumes:	
              - .:/home/node/app	
            ports:	
              - 8080:8080	
  
* **Run the command if the project already exists (optional)**	

  `docker compose run web npm install`	

* Start Your project 	

  `docker compose up`

> Access it from: `http://localhost:8080`	

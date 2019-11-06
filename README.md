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


### Get Started With Docker Compose ####

If you create a project or if you already have a project started, you must have docker-compose.yaml inside the application root folder.	

* Preparing the docker make up	

> `cd your-project/ && touch docker-compose.yaml`	
* Paste the code below into the docker-compose.yml file	


    version: '3'	
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

* Create your project	

> This command will create a new project vue	
> `docker-compose run web vue create .`	
* **Run the command if the project already exists (optional)**	

> `docker-compose run web npm install`	
* Start Your project 	

> This command will start your project

> `docker-compose up`

> Access it from: `http://localhost:8080`	
# Vuejs #

This is a **vuejs** image that is based on the **node 10** image.

### Get Started  ###

If you create a project or if you already have a project started, you must have docker-compose.yaml inside the application root folder.

* Preparing the docker make up

> `cd your-project/ && touch docker-compose.yaml`

* Paste the code below into the docker-compose.yml file

> ```
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
```

* Create your project

> This command will create a new project vue

> `docker-compose run web vue create .`

* **Run the command if the project already exists (optional)**

> `docker-compose run web npm install`

* Start Your project 

> This command will start your project, and you can access it from: `http://localhost:8080`

> `docker-compose up`

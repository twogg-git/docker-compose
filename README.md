![scaleconf-deploying-microservices](docker-compose.png)

## Working with docker-compose

This example you will have the following small sample app running on Docker using a *MongoDB* database and a *NodeJS* web server in two separate containers:

Now let´s start our ping server

```sh
$ docker-compose build
$ docker-compose run --service-ports echo
```
The above commands, will build the container and run the container (exposing the service ports). 

We now should be able to access the app locally at port 8080.

```sh
http://localhost:8080
```

The configuration used to build and run the container can be found in `docker-compose.yml`.



Based on: [Orchestrate multiple docker containers simply using FIG](https://www.packtpub.com/books/content/orchestrate-multiple-docker-containers-simply-using-fig)

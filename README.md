![scaleconf-deploying-microservices](docker-compose.png)

## Working with docker-compose

This example run a small node js server listening on port 3001. In order to work with docker-compose we use a `docker-compose.yml` file. 

Before using docker-compose we need to install our package.json with
```sh
$ npm install
```

Now let´s start our ping server

```sh
$ docker-compose build
$ docker-compose run --service-ports echo
```

We now should be able to access the ping server locally at port 3001.

The above commands, will build the container and run the container (exposing the service ports). 

The configuration used to build and run the container can be found in `docker-compose.yml`.



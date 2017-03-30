![deploying-docker-compose](docker-compose.png)

## Working with Docker-Compose

Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a Compose file to configure your application’s services. Then, using a single command, you create and start all the services from your configuration.

#### MongoDB + NodeJS + CoffeeScript

With this example you will have a small CoffeeScript app running on Docker using a *MongoDB* database and a *NodeJS* web server in two separate containers, both deployed thanks to Docker-Compose.

First we build our containers, in this case we stared with NodeJS image pull from the registry with `FROM` directive, then MongoDB image called on `docker-compose.yml` file with `image` command. 

> Note: This image will be named `dockercompose_web` with a size of 649MB so be patient when building...

```sh
$ docker-compose build
```

Now let's run our two services together in an isolated environment.

```sh
$ docker-compose up
```

We now should be able to access the app locally at port 8080.

```sh
http://localhost:8080
```

The configuration used to build and run the container can be found in `docker-compose.yml` and `Dockerfile`.

Based on: [Orchestrate multiple docker containers simply using FIG](https://www.packtpub.com/books/content/orchestrate-multiple-docker-containers-simply-using-fig)

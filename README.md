# Fast Graduation: the Docker Compose repository

This is a Docker Compose file as a part of the Fast Graduation for CS CMU project.

## Setup

You need to install Docker before use [Instruction](https://docs.docker.com/desktop/install/mac-install/)

1. We use [Docker Desktop](https://docs.docker.com/desktop) for our deployment. 
So make sure to have it installed in advanced.

2. Clone the repository.

```bash
git clone --recursive "https://github.com/Touutae-lab/FastGraduation-DockerCompose.git"
```

## Usage

To start all the services defined in `docker-compose.yml`, run this command on 
your terminal.

```bash
docker compose up -d
```

If everything is fine, there will be a new directory -- `data-volume` -- after 
starting the docker compose services. Otherwise, you may need to check the 
permissions for the directory where `docker-compose.yml` is located.

## Configuration

Most of the configurations (e.g. MySQL Root password, etc.) are defined in
[`docker-compose.yml`](https://github.com/Touutae-lab/FastGraduation-DockerCompose/blob/master-default/docker-compose.yml)
However, some specific settings depend on their platform. 
Our [web server](https://github.com/NickP-real/fast-graduation-FrontEnd), for 
example, was developed using [Next.js](https://nextjs.org/).

Everything should work fine then you should have `data-volume` directories

### MySQL

Databases and settings will be generated automatically after the first run of 
the Docker container, stored in `data-volume`. You can duplicate such the 
directory to create a backup. If you remove `data-volume`, the container will 
generate a new another initial `data-volume` as if it be running for the 
first time.

You can also apply your SQL files (files ending with `.sql`) for initialization. 
Just place SQL files in `initdb` and the container will read and run the commands 
in those files automatically on the first run of the container.

### Default Ports

* API Gatway at  [http://localhost:8000](http://localhost:8000/)
* PhpMyAdmin at [http://localhost:8080](http://localhost:8080/)
* MariaDB at [http://localhost:3306](http://localhost:3306/)
* SuperToken at [http://localhost:3567](http://localhost:3567/)
* Front-end at [http://localhost:3000](http://localhost:3000/)

You can modify ports in `docker-compose.yml`.

# FastGraduation Docker Compose Files
This is Docker a compose file for FastGraduation project


## Setup
You need to install Docker before use ([Instruction](https://docs.docker.com/desktop/install/mac-install/))

clone project using this Command.
```bash
  git clone --recursive "https://github.com/Touutae-lab/FastGraduation-DockerCompose.git"
 ```
 Check out Database password inside [docker-compose.yml](https://github.com/Touutae-lab/FastGraduation-DockerCompose/blob/master-default/docker-compose.yml)
 ## Usage
 After you have finished previous section run The following command.
 ```bash
  docker compose up -d
  ```
 Everything should work fine then you should have `data-volume` directories
  
  You can edit your database by putting SQL query command inside [init](https://github.com/Touutae-lab/FastGraduation-DockerCompose/tree/master-default/initdb) directories
 this work once when you run `docker compose up -d` for the first time
 
### All Default Service Mapping 
* API GATEWAY at  [http://localhost:8000](http://localhost:8000/)
* PHPMyAdmin at [http://localhost:8080](http://localhost:8080/)
* MariaDB at [http://localhost:3306](http://localhost:3306/)
* SuperToken at [http://localhost:3567](http://localhost:3567/)
* Front-End service at [http://localhost:3000](http://localhost:3000/)

You can change service port by edit [docker-compose.yml](https://github.com/Touutae-lab/FastGraduation-DockerCompose/blob/master-default/docker-compose.yml)

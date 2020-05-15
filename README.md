# Course Docker from Zero to Mastery - Demystified Containerization

Link Udemy: [Docker do Zero à Maestria - Contêinerização Desmistificada (PT-BR)](https://www.udemy.com/course/docker-do-zero-a-maestria-conteinerizacao-desmistificada/)

***

# Commands

```
Command:
    docker run -it <DOCKER HUB IMAGE> /bin/bash
Where:
    - docker run : Command to execute the container
    - -it : To allow iteration with the project
    - centos : The image to be created
    - /bin/bash : Initializes a container with a process in the terminal
Example:
    docker run -it centos /bin/bash
```

```
Command:
    docker ps
Where:
    - ps : Lists all running containers
```

```
Command:
    docker ps -a
Where:
    - docker ps -a : Lists all containers
```

```
Command:
    docker start <CONTAINER ID>
Where:
   - docker start : Execute the container through id
Example:
    docker start 37f1c4d71551
```

```
Command:
    docker attach <CONTAINER ID>
Where:
    - docker start : Links to the docker start of the running container
Example:
    docker attach  37f1c4d71551
```

```
Command:
    CTRL + P + Q
Where:
    - CTRL + P + Q : Exits the container iterative without closing, as the exit command does closing the container
```

```
Command:
    docker pull <DOCKER HUB IMAGE>
Where:
    - docker pull : Will download the latest version images (latest)    
Example:
    docker pull fedora
```

```
Command:
    docker pull -a <DOCKER HUB IMAGE>
Where:
   - -a : Will download all images from the existing version on the docker hub
Example:
    docker pull -a fedora
```

```
Command:
    docker images
Where:
    - images : List all installed docker images
Example:
    docker images
```

```
Command:
    docker images <NAME IMAGE>
Where:
    - images : List installed docker images by name
Example:
    docker images fedora
```

```
Command:
    docker commit <CONTAINER ID> <NAME CONTAINER>
Where:
    - commit : Confirm changes or settings for a container file in a new image
    - <CONTAINER ID> : Get the id of a container already created
    - <NAME CONTAINER> : Create a name for the container
Example:
    docker commit 37f1c4d71551 foo-bar
```

```
Command:
    docker history <NAME IMAGE>
Where:
    - history : Historical image data list
    - <NAME IMAGE> : Container name
Example:
    docker history foo-bar
```

```
Command:
    docker run -d <DOCKER HUB IMAGE> /bin/bash
Where:
    - docker run : Command to execute the container
    - -d : Detash mode, run the container in the background
    - centos : The image to be created
    - /bin/bash : Initializes a container with a process in the terminal
Example:
    docker run -d centos /bin/bash
```

```
Command:
    docker top <CONTAINER ID>
Where:
    - top : List running processes
    - <CONTAINER ID> : Get the id of a container already created
Example:
    docker top 39c53628c639
```

```
Command:
    docker run --cpu-shares=256 <NAME IMAGE>
Where:
    - command : Specifies how much cpu to consume in the image
    - <NAME IMAGE> : Container name
Example:
    docker run --cpu-shares=256 foo-bar
```

```
Command:
    docker run memory=1g <NAME IMAGE>
Where:
    - command : Specifies how much ram to consume in the image
    - <NAME IMAGE> : Container name
Example:
    docker run memory=1g foo-bar
```

```
Command:
    docker inspect <CONTAINER ID> or <NAME CONTAINER>
Where:
    - inspect : Inspect the container settings
    - <CONTAINER ID> : Get the id of a container already created
    - <NAME CONTAINER> : Create a name for the container
Example:
    docker inspect 39c53628c639 or foo-bar
```

```
Command:
    docker logs <CONTAINER ID> or <CONTAINER NAME>
Where:
    - logs : Access the container and access the logs
    - <CONTAINER ID> : Get the id of a container already created
    - <NAME CONTAINER> : Create a name for the container
Example:
    docker logs foo-bar
```

```
Command:
    docker stop <CONTAINER ID> or <CONTAINER NAME>
Where:
    - stop : Stop the running container
    - <CONTAINER ID> : Get the id of a container already created
    - <CONTAINER NAME> : Create a name for the container
Example:
    docker stop 81a8864cfa10 or foo-bar
```

```
Command:
    docker start <CONTAINER ID> or <CONTAINER NAME>
Where:
    - start : Start the running container
    - <CONTAINER ID> : Get the id of a container already created
    - <CONTAINER NAME> : Create a name for the container
Example:
    docker start 81a8864cfa10 or foo-bar
```

```
Command:
    docker restart <CONTAINER ID> or <CONTAINER NAME>
Where:
    - restart : Restart the running container
    - <CONTAINER ID> : Get the id of a container already created
    - <CONTAINER NAME> : Create a name for the container
Example:
    docker restart 81a8864cfa10 or foo-bar
```

```
Command:
    docker ps -l
Where:
    - ps : Lists all running containers
    - -l : Specifies the last container that was executed
```

```
Command:
    docker rm <CONTAINER ID> or <CONTAINER NAME>
Where:
    - rm : Removes the container from the system
    - <CONTAINER ID> : Get the id of a container already created
    - <CONTAINER NAME> : Create a name for the container
Example:
    docker rm 5161f20c401f or foo-bar
```

```
Command:
    docker rm <CONTAINER ID> or <CONTAINER NAME> -f
Where:
    - rm : Removes the container from the system
    - <CONTAINER ID> : Get the id of a container already created
    - <CONTAINER NAME> : Create a name for the container
    - -f : If the container is running this flag forces it to stop to be removed
Example:
    docker rm 5161f20c401f or foo-bar -f
```

```
Command:
    alias dps="docker ps"
Where:
    - dps : Instead of typing for example docker ps, this command makes you create a tag like example dps to make typing a command easier
    - alias dps: Tag to be defined
    - "docker ps" : Command to be used by the tag
```

```
Command:
    docker inspect <CONTAINER ID> | grep Pid
Where:
    - inspect : Inspect the container settings
    - <CONTAINER ID> : Get the id of a container already created
    - | grep Pid : Returns the PID of the container host process
Example:
    docker inspect 85ef4acf7081 | grep Pid
```

```
Command:
    docker exec -it <CONTAINER ID> /bin/bash
Where:
    - exec : Will run in the default directory of the 
    container.
    - -it : To allow iteration with the project
    - <CONTAINER ID> : Get the id of a container already created
    - /bin/bash : Initializes a container with a process in the terminal
Example:
    docker exec -it 85ef4acf7081 /bin/bash
```

***

# References

- [Docker](https://www.docker.com/)
- [Docker Hub](https://hub.docker.com/)
- [Docker Documentation](https://docs.docker.com/)
- [Best practices for writing Dockerfiles](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)
- [Install Docker Engine on CentOS](https://docs.docker.com/engine/install/centos/)
- [dockerd](https://docs.docker.com/engine/reference/commandline/dockerd/)
- [Configure and troubleshoot the Docker daemon](https://docs.docker.com/config/daemon/)
- [Install Docker Engine on CentOS](https://docs.docker.com/engine/install/centos/)
- [A minimal Ubuntu base image modified for Docker-friendliness](https://github.com/phusion/baseimage-docker)

***

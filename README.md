# Course Docker from Zero to Mastery - Demystified Containerization

Link Udemy: [Docker do Zero à Maestria - Contêinerização Desmistificada (PT-BR)](https://www.udemy.com/course/docker-do-zero-a-maestria-conteinerizacao-desmistificada/)

***

# Commands

## Terminal

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

```
Command:
    docker build -t <CREATE NAME IMAGE> : <VERSION> .
Where:
    - build : Comando para construir o container
    - -t : Tag an image. This will build like the previous example, but it will then tag the resulting image. The repository name will be <CREATE NAME IMAGE and the tag will be <VERSION>.
    - <CREATE NAME IMAGE>: Definir o nome do conteiner
    - <VERSION> : Define o número da versão criada
    - . : Contexto. Onde o arquivo está especificado
Example:
    docker build -t helloworld:0.1 .
```

```
Command:
    docker run <IMAGE NAME>
Where:
    - run : Run the container using the created name.
    - <IMAGE NAME> : Name created through the docker build.
Example:
    docker run helloworld:0.1
```

```
Command:
    docker tag <IMAGE NAME> <USER>/<TAG NAME>
Where:
    - tag : Create a name on an image in the docker.
    - <IMAGE NAME> : Name created through the docker build.
    - <USER> : Your username on the DockerHub.
    - <TAG NAME> : Name of the tag to be inserted in the image along with the version.
Example:
    docker tag helloworld:0.1 thecomitre/helloworld:1.0
```

```
Command:
    docker login docker.io
Where:
    - login : Login into your dockerhub account
```

```
Command:
    docker push <IMAGE NAME>
Where:
    - push : Send the created image to the dockerhub repository.
    - <IMAGE NAME> : Name created through the docker build.
Example:
    docker push thecomitre/helloworld
```

```
Command:
    docker pull <USER>/<IMAGE NAME>:<TAG NAME>
Where:
    - pull : Download existing image dockerhub.
    - <USER> : Your username on the DockerHub.
    - <IMAGE NAME> : Name created through the docker build.
    - <TAG NAME> : Name of the tag to be inserted in the image along with the version.
Example:
    docker pull thecomitre/helloworld:1.0
```

```
Command:
    docker search <IMAGE NAME>
Where:
    - search : Search the name related to the search with images of the dockerhub.
    - <IMAGE NAME> : Name created through the docker build.
Example:
    docker search ubuntu
```

```
Command:
    docker tag <DOCKER USER>/<DOCKER IMAGE> <HOST>:<NAME TAG>
Where:
    - <DOCKER USER> : Name of the user who owns the image on the dockerhub.
    - <DOCKER IMAGE> : Image name.
    - <HOST> : Specifies the name. Image host.
    - <IMAGE NAME> : Defined tag name.
Example:
    docker tag docker.io/nginx localhost:5000/mynginx
```

```
Command:
    docker run -d -p <PORT>:<PORT> <IMAGE NAME>
Where:
    - -d : Detached.
    - -p : Specifies the access and communication port.
    - <PORT> : Specifies the name. Image host.
    - <IMAGE NAME> :Image name.
Example:
    docker run -d -p 80:80 webserver
```

***

## Dockerfile

```
Command:
    FROM <DOCKER IMAGE>
Where:
    - FROM : Tell which images you are basing on
Example:
    FROM ubuntu:20.10
```

```
Command:
    RUN <COMMAND>
Where:
    - RUN : Executes commands when the container is being assembled. Used to install programming languages ​​or programs.
Note:
    - Each RUN instruction creates a new layer
Example:
    RUN apt-get update
```

```
Command:
    CMD <COMMAND OR COMMANDS>
Where:
    - CMD : Executes a command as if we were in shell mode (terminal)
Note:
    - The CMD instruction has three forms:
        - CMD ["executable","param1","param2"] (exec form, this is the preferred form)
        - CMD ["param1","param2"] (as default parameters to ENTRYPOINT)
        - CMD command param1 param2 (shell form)
    - There can only be one CMD instruction in a Dockerfile. If you list more than one CMD then only the last CMD will take effect.
    - The main purpose of a CMD is to provide defaults for an executing container. These defaults can include an executable, or they can omit the executable, in which case you must specify an ENTRYPOINT instruction as well.
    - If CMD is used to provide default arguments for the ENTRYPOINT instruction, both the CMD and ENTRYPOINT instructions should be specified with the JSON array format.
Example:
    CMD ["echo", "Hello World"]
```

```
Command:
    RUN apt-get clean
Where:
    - FROM : Executes commands when the container is being assembled. Used to install programming languages ​​or programs.
    - apt-get clean : On Ubuntu it clears or stores the cache stored in the creation of the container.
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
- [Docker Tag](https://docs.docker.com/engine/reference/commandline/tag/)
- [Announcing Docker Enterprise Edition](https://www.docker.com/blog/docker-enterprise-edition/)
- [Docker Enterprise](https://www.mirantis.com/software/docker/docker-enterprise/)
- [Compartilhamento do sistema de arquivos (osxfs)](https://docs.docker.com/docker-for-mac/osxfs/#namespaces) 
- [Docker Community](https://www.docker.com/docker-community)
- [Docker GitHub](https://github.com/docker)

***

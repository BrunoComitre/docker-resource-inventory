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
    - docker ps : Lists all running containers
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
    docker start : Execute the container through id
Example:
    docker start 37f1c4d71551
```

```
Command:
    docker attach <CONTAINER ID>
Where:
    docker start : Links to the docker start of the running container
Example:
    docker attach  37f1c4d71551
```

```
Command:
    CTRL + P + Q
Where:
    CTRL + P + Q : Exits the container iterative without closing, as the exit command does closing the container
```

```
Command:
    docker pull <DOCKER HUB IMAGE>
Where:
    docker pull : Will download the latest version images (latest)    
Example:
    docker pull fedora
```

```
Command:
    docker pull -a <DOCKER HUB IMAGE>
Where:
    -a : Will download all images from the existing version on the docker hub
Example:
    docker pull -a fedora
```

```
Command:
    docker images
Where:
    images : List all installed docker images
Example:
    docker images
```

```
Command:
    docker images <NAME IMAGE>
Where:
    images : List installed docker images by name
Example:
    docker images fedora
```
c
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

***

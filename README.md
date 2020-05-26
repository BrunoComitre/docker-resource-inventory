# Docker Study

</br>

[In Development]

</br>

## TO-DO

- [ ] Learn how to use volumes to share and persist log data (Mount a volume in the container).
- [ ] Learn how to test on a docker image before creating the dockerfile (Best Practice)
- [ ] <none>: You can capture the id if the build breaks and then go back and take the last point and try to build it again (from the error).

<br />

## Notes

### CMD
Run at run time only (Runtime)

- Run command on containers during startup
- Equivalent to:
  - <arguments> <command>
  - docker run <arguments> / bin / bash
- One CMD by Dockerfile

**Shell Form**
- Commands are expressed in the same way as shell commands
- The commands are appended with:
  - "/ bin / bash -c"
- Expansion of variables

**Exec Form**

- JSON array style: ["command", "arg1"]
- Containers do not need shell
- Ensures that the String is not overwritten by the Shell
- No Shell features:
  - No variable expansion
  - No special characters (&&, ||, <>, ...)

</br>

### RUN
Time instruction Buildtime (Compilation)

- Compile and layer images
- Used to install applications

</br>

### ENTRYPOINT
It cannot be overwritten at run time by normal command:
    - example: docker run <arguments> <command>

Any runtime command can be used as an argument in ENTRYPONT:
    - example: docker run <arguments> <command>

Expansion of variables.

</br>

### DOCKER0 BRIDGE
There is no docker0 bridge on Windows

Because of the way networking is implemented in Docker Desktop for Windows, you cannot see a docker0 interface on the host.
This interface is actually within the virtual machine.

</br>

### LOG LEVELS
- debug: Logs messages from debug, info, warn, error and fatal.
- info: Logs messages from info, warn, error and fatal.
- warn: Logs messages from warn, error and fatal.
- error: Logs messages from error and fatal.
- fatal: Error messages only fatal.

</br>

### COURSE
- Many terminal and dockerfile commands are specified in the folder: Course Docker from Zero to Mastery - Demystified Containerization.


</br>

***  

</br>
 
## References

### Important
- [Docker Book](http://stack.desenvolvedor.expert/appendix/docker/comandos.html) [PT-BR]
- [Docker World](https://www.mundodocker.com.br/) [PT-BR]

### Diversos
- [The best Docker base image for your Python application (April 2020)](https://pythonspeed.com/articles/base-image-python-docker-images/) [EN-US]
- [Simplified Docker-ing for Data Science — Part 1](https://becominghuman.ai/docker-for-data-science-part-1-dd41e5ef1d80) [EN-US]
- [jupyter/datascience-notebook](https://hub.docker.com/r/jupyter/datascience-notebook/) [EN-US]
- [docker-stacks](https://github.com/jupyter/docker-stacks) [EN-US]
- [AWS and dockerized applications](https://imasters.com.br/aws/aws-e-as-aplicacoes-dockerizadas) [PT-BR]
- [Basics of Docker for Amazon ECS](https://docs.aws.amazon.com/pt_br/AmazonECS/latest/developerguide/docker-basics.html) [PT-BR]
- [Kubernetes and container technology](https://www.redhat.com/pt-br/topics/containers/what-is-kubernetes#) [PT-BR]
- [Ultimately: what is Docker and how does it work?](https://www.treinaweb.com.br/blog/no-final-das-contas-o-que-e-o-docker-e-como-ele-funciona/) [PT-BR]
- [Speed Up The Build of Your Python Docker Image](https://vsupalov.com/speed-up-python-docker-image-build/) [EN-US]
- [Deploying Scipy & Numpy With Docker](https://medium.com/google-cloud/deploying-scipy-numpy-with-docker-205e9afac3b0) [EN-US]

### Certification

- [How to pass Docker DCA](https://medium.com/@cristianvitortrucco/docker-dca-8be5bb09eb44) [PT-BR] 
- [Docker Certification](https://success.docker.com/certification) [EN-US]
- [Docker Certification Tips (DCA)](https://www.jlcp.com.br/docker-dicas-para-certificacao-dca/) [PT-BR]
- [Docker Mastery: with Kubernetes +Swarm from a Docker Captain](https://www.udemy.com/course/docker-mastery/) [EN-US]

### Course Docker from Zero to Mastery

- [Docker](https://www.docker.com/) [EN-US]
- [Docker Hub](https://hub.docker.com/) [EN-US]
- [Docker Documentation](https://docs.docker.com/) [EN-US]
- [Best practices for writing Dockerfiles](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/) [EN-US]
- [Install Docker Engine on CentOS](https://docs.docker.com/engine/install/centos/) [EN-US]
- [dockerd](https://docs.docker.com/engine/reference/commandline/dockerd/) [EN-US]
- [Configure and troubleshoot the Docker daemon](https://docs.docker.com/config/daemon/) [EN-US]
- [Install Docker Engine on CentOS](https://docs.docker.com/engine/install/centos/) [EN-US]
- [A minimal Ubuntu base image modified for Docker-friendliness](https://github.com/phusion/baseimage-docker) [EN-US]
- [Docker Tag](https://docs.docker.com/engine/reference/commandline/tag/) [EN-US]
- [Announcing Docker Enterprise Edition](https://www.docker.com/blog/docker-enterprise-edition/) [EN-US]
- [Docker Enterprise](https://www.mirantis.com/software/docker/docker-enterprise/) [EN-US]
- [Compartilhamento do sistema de arquivos (osxfs)](https://docs.docker.com/docker-for-mac/osxfs/#namespaces) [EN-US]
- [Docker Community](https://www.docker.com/docker-community) [EN-US]
- [Docker GitHub](https://github.com/docker) [EN-US]
- [Docker RUN vs CMD vs ENTRYPOINT](https://goinbigdata.com/docker-run-vs-cmd-vs-entrypoint/) [EN-US]
- [Networking features in Docker Desktop for Windows](https://docs.docker.com/docker-for-windows/networking/) [EN-US]
- [Docker Images](https://docs.docker.com/engine/reference/commandline/images/) [EN-US]
- [Configure and troubleshoot the Docker daemon](https://docs.docker.com/config/daemon/) [EN-US]
- [Use the Docker command line](https://docs.docker.com/engine/reference/commandline/cli/) [EN-US]
- [Use bridge networks](https://docs.docker.com/network/bridge/) [EN-US]
- [Overview Network](https://docs.docker.com/network/) [EN-US]
- [Container networking](https://docs.docker.com/config/containers/container-networking/) [EN-US]
- [leandrocgsi/DockerFromZeroToMastery](https://github.com/leandrocgsi/DockerFromZeroToMastery) [PT-BR]
- [Install Docker Compose](https://docs.docker.com/compose/install/) [EN-US]
- [Docker is installed but Docker Compose is not ? why?](https://stackoverflow.com/questions/36685980/docker-is-installed-but-docker-compose-is-not-why) [EN-US]

***

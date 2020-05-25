FROM ubuntu:20.10

RUN apt-get update && apt-get install -y tzdata  \
        && export TZ=America/Brazil

RUN apt-get update && apt-get install -y iputils-ping apache2

ENTRYPOINT ["apache2ctl"] 
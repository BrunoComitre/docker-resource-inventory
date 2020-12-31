#Simple Udemy Web Server
FROM ubuntu:20.10

RUN apt-get update

RUN apt-get install -y tzdata

RUN export TZ=America/Brazil

RUN apt-get install -y apache2

RUN apt-get install -y apache2-utils

RUN apt-get install -y vim

RUN apt-get clean

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]

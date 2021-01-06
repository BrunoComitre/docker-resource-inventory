FROM ubuntu:20.10

RUN apt-get update && apt-get install -y tzdata  \
        && export TZ=America/Brazil

RUN apt-get update && apt-get install -y \
        apache2 \
        apache2-utils \
        vim \
        && apt-get clean \
		&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
		
EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]

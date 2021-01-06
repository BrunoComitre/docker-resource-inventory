FROM jenkins/jenkins

USER root

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y git wget curl nano && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    apt-get update && \
    apt-get dist-upgrade -y

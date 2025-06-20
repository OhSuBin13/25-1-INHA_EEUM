# CI TEST
FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \ 
    apt-get install -y awscli docker.io curl unzip git && \
    rm -rf /var/lib/apt/lists/* 

RUN usermod -aG docker jenkins

USER jenkins
FROM jenkins/jenkins:2.276

USER root

RUN apt-get update && apt-get install curl -y
RUN curl -fsSL https://get.docker.com/ | sh
RUN groupmod -g 999 docker
RUN usermod -aG docker jenkins

USER jenkins

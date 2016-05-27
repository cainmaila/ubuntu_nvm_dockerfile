FROM ubuntu:14.04
MAINTAINER docker_user cain@cainplay.com
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y git wget curl vim
RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash
RUN export NVM_DIR="$HOME/.nvm"
RUN [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
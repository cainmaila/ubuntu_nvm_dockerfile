FROM ubuntu:14.04.4
MAINTAINER docker_user cain@cainplay.com
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y git wget curl vim
RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash
ADD root/.bash_profile /root/.bash_profile
RUN nvm install 4.4.5
RUN npm i -g pm2
CMD ["bash"]
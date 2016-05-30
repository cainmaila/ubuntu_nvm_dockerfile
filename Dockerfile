FROM ubuntu:14.04.4
MAINTAINER docker_user cain@cainplay.com
RUN apt-get update && apt-get upgrade -y && apt-get install -y git wget
ENV NVM_DIR=/root/.nvm
RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash \ 
	&& . $NVM_DIR/nvm.sh \ 
	&& nvm install 4.4.5 \ 
	&& npm i -g pm2
CMD ["bash"]

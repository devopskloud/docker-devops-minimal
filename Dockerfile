FROM ubuntu:22.04
LABEL devopskloud.maintainer="Deepak Kumar Mahana"

COPY ./scripts /scripts

WORKDIR /scripts

RUN chmod +x ./setup_ms_repo.sh
RUN ./setup_ms_repo.sh

RUN chmod +x ./install_packages.sh
RUN ./install_packages.sh

RUN useradd -ms /bin/bash devops
USER devops

COPY ./configs /home/devops
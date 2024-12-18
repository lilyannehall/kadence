FROM debian:bookworm
LABEL maintainer "lily@tactcicalchihuahua.lol"
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install wget apt-transport-https gnupg curl libssl-dev git python3 build-essential tor
RUN curl -sL https://deb.nodesource.com/setup_22.x | bash -
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs
ENV GRANAX_USE_SYSTEM_TOR="1"
RUN git clone https://github.com/lilyannehall/kadence /root/kadence; \
    cd /root/kadence; \
    git fetch --tags; \
    git checkout $(git describe --tags `git rev-list --tags --max-count=1`); \
    cd /root/kadence && npm install --unsafe-perm --production
VOLUME ["/root/.config/kadence"]
EXPOSE 5274
EXPOSE 5275
ENV kadence_NodeListenAddress="0.0.0.0"
ENV kadence_ControlSockEnabled="0"
ENV kadence_ControlPortEnabled="1"
ENTRYPOINT ["/root/kadence/bin/kadence.js"]
CMD []

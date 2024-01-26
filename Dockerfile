FROM --platform=linux/amd64 cm2network/steamcmd:root

EXPOSE 8211/udp

RUN mkdir /palworld

WORKDIR /palworld

COPY startup.sh /startup.sh

VOLUME [ "/palworld" ]

ENTRYPOINT [ "/startup.sh" ]
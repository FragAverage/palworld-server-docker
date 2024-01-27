FROM --platform=linux/amd64 cm2network/steamcmd:root

USER steam

WORKDIR /home/steam/steamcmd

RUN mkdir -p /home/steam/palworld/Pal/Saved

COPY startup.sh /home/steam/palworld/startup.sh

USER root

RUN chmod +x /home/steam/palworld/startup.sh

USER steam

EXPOSE 8211/udp

VOLUME [ "/home/steam/palworld/" ]

ENTRYPOINT [ "/home/steam/palworld/startup.sh" ]
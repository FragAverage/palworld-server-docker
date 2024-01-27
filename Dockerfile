FROM --platform=linux/amd64 cm2network/steamcmd:root

WORKDIR /home/steam/steamcmd

RUN mkdir -p /home/steam/palworld/Pal/Saved

COPY startup.sh /home/steam/steamcmd/startup.sh

RUN chmod +x /home/steam/steamcmd/startup.sh

EXPOSE 8211/udp

VOLUME [ "/home/steam/steamcmd/" ]

ENTRYPOINT [ "/home/steam/steamcmd/startup.sh" ]
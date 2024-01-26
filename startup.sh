#!/bin/bash

install_or_update() {
  /home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steam/palworld +app_update 2394010 validate +exit
}

start_server() {
  install_or_update 
}

start_server
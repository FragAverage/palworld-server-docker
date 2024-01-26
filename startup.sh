#!/bin/bash

install_or_update() {
  /home/steam/steamcmd/steamcmd.sh +force_install_dir /home/steam/palworld +login anonymous +app_update 2394010 validate +exit
}

start_server() {
  install_or_update 
}

start_server
#!/bin/bash

install_or_update() {
  /home/steam/steamcmd/steamcmd.sh +force_install_dir /home/steam/palworld +login anonymous +app_update 2394010 validate +quit
}

start_server() {
  # install_or_update 

  # ARGS="EpicApp=PalServer -useperfthreads -NoAsyncLoadThread -UseMultitheadForDS"



  echo "Printing ls (workdir)"
  ls

  echo "Printing ls /home/steam"
  ls /home/steam

  echo "Printing ls /home/steam/palworld"
  ls /home/steam/palworld
  
  # cd /home/steam/palworld
  # ./PalServer.sh "$ARGS"

}


term_handler() {
	kill -SIGTERM $(pidof PalServer-Linux-Test)
	tail --pid=$(pidof PalServer-Linux-Test) -f 2>/dev/null
	exit 143;
}

trap 'kill ${!}; term_handler' SIGTERM

start_server &
killpid="$!"
while true
do
  wait $killpid
  exit 0;
done
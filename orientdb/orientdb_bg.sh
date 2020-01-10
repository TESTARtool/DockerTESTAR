#!/bin/sh

# turn on bash's job control
set -m

# Start the primary process and put it in the background
./bin/server.sh &

sleep 5 # TODO: replace by wait until command before orientdb has started completely



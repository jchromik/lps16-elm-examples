#!/bin/bash
echo "Stopping Elm Reactor."
killall elm-reactor
echo "Stopping Live Reload Server."
killall node
echo "Done."

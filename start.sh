#!/bin/bash
echo "Starting Elm Reactor."
elm-reactor &> /dev/null &
echo "Starting Live Reload Server."
livereload . -e 'elm' &> /dev/null &
echo "Done."

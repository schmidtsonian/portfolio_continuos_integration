#!/bin/bash

source bin/constants.sh

docker exec -it $CONTAINER_NAME bash -c "source ~/.bashrc \
  && echo \
  && echo 'Starting the project watcher...' \
  && echo \
  && npx gulp watch"

#!/bin/bash

source bin/constants.sh

echo "Are you sure? [yN]"
read -r CONFIRM1

if [[ $CONFIRM1 == 'y' ]]; then

  echo "Are you really, REALLY SURE?"
  echo "because this is going to: "
  echo "1: stop the container"
  echo "2: remove the container"
  echo "3: remove the image"
  echo "4: remove the network"
  echo "[yn]"

  read -r CONFIRM2

  if [[ $CONFIRM2 == 'y' ]]; then

    echo "(╯°□°）╯︵ ┻━┻)"
    docker-compose stop
    docker-compose rm
    docker rmi $CONTAINER_NAME
    docker network rm $NETWORK_NAME

  else
    echo "That was close..."
  fi

else
  echo "Good, you are wiser than before..."
fi


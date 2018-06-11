#!/bin/bash

source bin/constants.sh

echo "Deploying site..."
sudo apt-get update && sudo apt-get install rsync
ssh-keyscan -H $MASTER_IP >> ~/.ssh/known_hosts
rsync -azq --partial --delete $SRC_DIR $MASTER_USER@$MASTER_IP:$MASTER_DIR

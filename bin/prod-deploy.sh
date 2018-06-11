#!/bin/bash

source bin/constants.sh

echo "Deploying site..."
sudo apt-get update && sudo apt-get install rsync
ssh-keyscan -H $PROD_IP >> ~/.ssh/known_hosts
rsync -azq --partial --delete $SRC_DIR $PROD_USER@$PROD_IP:$PROD_DIR

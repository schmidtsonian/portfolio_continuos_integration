#!/bin/bash

source bin/constants.sh

echo "Deploying site..."
sudo apt-get update && sudo apt-get install rsync
ssh-keyscan -H $STG_IP >> ~/.ssh/known_hosts
rsync -azq --partial --delete $SRC_DIR $STG_USER@$STG_IP:$STG_DIR

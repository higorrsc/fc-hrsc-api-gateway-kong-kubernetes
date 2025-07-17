#!/bin/bash
# kubectl testkube install
wget -qO - https://repo.testkube.io/key.pub | sudo apt-key
add - echo "deb https://repo.testkube.io/linux linux main" | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y testkube
testkube init demo

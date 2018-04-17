#!/bin/bash

cd ~
sudo apt-get install git -y
git clone https://github.com/MycroftAI/mycroft-core.git
cd mycroft-core
pkexec ./dev_setup.sh

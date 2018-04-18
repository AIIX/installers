#!/bin/bash

cd ~
pkexec apt-get install git -y
git clone https://github.com/MycroftAI/mycroft-core.git
cd mycroft-core
./dev_setup.sh

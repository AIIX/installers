#!/bin/bash

# Make sure we are in user's home directory
cd ~
pkexec dnf install git -y
git clone https://github.com/MycroftAI/mycroft-core.git
cd mycroft-core
./dev_setup.sh

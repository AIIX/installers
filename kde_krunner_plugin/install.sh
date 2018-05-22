#!/bin/bash

getUsr=$(pstree -lu -s $$ | grep --max-count=1 -o '([^)]*)' | head -n 1 | sed 's/) (/\n/;s/[()]//g')
echo $getUsr
# Get The Krunner Plugin
cd /home/$getUsr/
git clone https://github.com/AIIX/plasma-runner-mycroft
cd /home/$getUsr/plasma-runner-mycroft
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=`kf5-config --prefix` -DKDE_INSTALL_QTPLUGINDIR=`kf5-config --qt-plugins`
make

# Install the Plugin
sudo make install

# Quit & Restart Krunner
kquitapp krunner
krunner

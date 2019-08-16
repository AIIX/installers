#!/bin/bash

getUsr=$(pstree -lu -s $$ | grep --max-count=1 -o '([^)]*)' | head -n 1 | sed 's/) (/\n/;s/[()]//g')
echo $getUsr
# Build the Mycroft-GUI
cd /home/$getUsr/Mycroft-GUI
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
make

# Install the Mycroft-GUI
sudo make install

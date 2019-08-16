#!/bin/bash

getUsr=$(pstree -lu -s $$ | grep --max-count=1 -o '([^)]*)' | head -n 1 | sed 's/) (/\n/;s/[()]//g')
echo $getUsr
# Build the lottie-qml
cd /home/$getUsr/lottie-qml
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
make

# Install the lottie-qml
sudo make install

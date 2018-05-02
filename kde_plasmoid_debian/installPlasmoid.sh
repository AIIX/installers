#!/bin/bash

getuser=$(who am i | awk '{print $1}')
echo $getuser

# Build the Plasmoid
#cd /home/$getuser/plasma-mycroft
#mkdir build
#cd build
#cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
#make

# Install the Plasmoid
#make install

# Set permissions on new files to allow execution
#pkexec /tmp/installers/setpermissions.sh

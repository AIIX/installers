#!/bin/bash
set -Ee

# Build the Plasmoid
cd ~
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
make

# Install the Plasmoid
make install

# Set permissions on new files to allow execution
pkexec /tmp/installers/setpermissions.sh

#!/bin/bash

getUsr=$(pstree -lu -s $$ | grep --max-count=1 -o '([^)]*)' | head -n 1 | sed 's/) (/\n/;s/[()]//g')
echo $getUsr
# Build the Plasmoid
cd /home/$getUsr/plasma-mycroft
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
make

# Install the Plasmoid
sudo make install

# Fix First Startup
mycroft_root_dir='/opt/mycroft'
skills_dir="${mycroft_root_dir}"/skills

if [ ! -d ${skills_dir} ]; then
    sudo mkdir -p ${skills_dir}
    sudo chown -Rvf ${getUsr}:${getUsr} ${mycroft_root_dir}
fi

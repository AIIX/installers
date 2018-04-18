#!/bin/bash

cd ~
pkexec apt-get install git -y
git clone https://anongit.kde.org/plasma-mycroft.git

# Install all necessary supporting libraries and tools
pkexec apt-get install libkf5notifications-data libkf5notifications-dev qml-module-qtquick2 qml-module-qtquick-controls2 qml-module-qtquick-controls qml-module-qtwebsockets qml-module-qt-websockets qtdeclarative5-qtquick2-plugin qtdeclarative5-models-plugin cmake cmake-extras cmake-data qml-module-qtquick-layouts libkf5plasma-dev extra-cmake-modules qtdeclarative5-dev build-essential g++ gettext libqt5webkit5 libqt5webkit5-dev libkf5i18n-data libkf5i18n-dev libkf5i18n5 qml-module-qtgraphicaleffects libdbus-1-dev libdbus-glib-1-dev -y

# Build the Plasmoid
cd plasma-mycroft
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
make

# Install the Plasmoid
pkexec make install

# Set permissions on new files to allow execution
pkexec /tmp/installers/setpermissions.sh

# Restart the machine!
echo "Everything is built and ready to go!"
echo "Activate Mycroft By:"
echo "1) Right-clicking on the desktop and picking 'Add Widget...'"
echo "2) Locating 'Mycroft' and dragging that to the desktop"
echo "3) Click on the Plasmoid and press the 'Play' button"
echo "4) Register your devices at https://home.mycroft.ai with the pairing code"
echo "5) Say 'Hey Mycroft, what time is it?'"

#!/bin/bash

cd ~
# Pull down the Plasmoid code from KDE repos
git clone https://anongit.kde.org/plasma-mycroft.git

# Install all necessary supporting libraries and tools
pkexec dnf install kf5-knotifications-devel qt5-qtbase-devel qt5-qtdeclarative-devel qt5-qtquickcontrols qt5-qtquickcontrols2 qt5-qtwebsockets qt5-qtwebsockets-devel cmake extra-cmake-modules kf5-plasma-devel kf5-ki18n-devel qt5-qtwebkit qt5-qtwebkit-devel qt5-qtgraphicaleffects dbus-devel dbus-glib-devel -y

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
echo "Activate it by:"
echo "1) Right-clicking on the desktop and picking 'Add Widget...'"
echo "2) Locating 'Mycroft' and dragging that to the desktop"
echo "3) Click on the Plasmoid and press the 'Play' button"
echo "4) Register your devices at https://home.mycroft.ai with the pairing code"
echo "5) Say 'Hey Mycroft, what time is it?'"

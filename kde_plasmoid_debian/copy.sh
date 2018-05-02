#!/bin/bash

cp /tmp/installers/kde_plasmoid_debian/debianUnstable.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_debian/installmycroft.sh ~/mycroft-core/
cd ~
cd mycroft-core
chmod a+x debianUnstable.sh
chmod a+x installmycroft.sh

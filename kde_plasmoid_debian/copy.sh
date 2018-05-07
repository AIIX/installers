#!/bin/bash

cp /tmp/installers/kde_plasmoid_debian/debianUnstable.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_debian/installmycroft.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_debian/installmycroftlw.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_debian/install-mimic-lw.sh ~/mycroft-core/scripts/
cd ~
cd mycroft-core
chmod a+x debianUnstable.sh
chmod a+x installmycroft.sh
chmod a+x installmycroftlw.sh
chmod a+x ./scripts/install-mimic-lw.sh

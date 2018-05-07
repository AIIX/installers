#!/bin/bash

cp /tmp/installers/kde_plasmoid_fedora/depsFed27.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_fedora/depsFed28.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_fedora/installmycroft.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_fedora/installmycroftlw.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_fedora/install-mimic-lw.sh ~/mycroft-core/scripts/
cd ~
cd mycroft-core
chmod a+x depsFed27.sh
chmod a+x depsFed28.sh
chmod a+x installmycroft.sh
chmod a+x installmycroftlw.sh
chmod a+x ./scripts/install-mimic-lw.sh

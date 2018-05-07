#!/bin/bash

cp /tmp/installers/kde_plasmoid_ubuntu/ubuntuArtful.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_ubuntu/ubuntuBionic.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_ubuntu/installmycroft.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_ubuntu/installmycroftlw.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_ubuntu/install-mimic-lw.sh ~/mycroft-core/scripts/
cd ~
cd mycroft-core
chmod a+x ubuntuArtful.sh
chmod a+x ubuntuBionic.sh
chmod a+x installmycroft.sh
chmod a+x installmycroftlw.sh
chmod a+x ./scripts/install-mimic-lw.sh

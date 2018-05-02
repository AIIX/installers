#!/bin/bash

cp /tmp/installers/kde_plasmoid_ubuntu/ubuntuArtful.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_ubuntu/ubuntuBionic.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_ubuntu/installmycroft.sh ~/mycroft-core/
cd ~
cd mycroft-core
chmod a+x ubuntuArtful.sh
chmod a+x ubuntuBionic.sh
chmod a+x installmycroft.sh

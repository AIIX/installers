#!/bin/bash

cp /tmp/installers/kde_plasmoid_neon/neonXenial.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_neon/neonBionic.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_neon/installmycroft.sh ~/mycroft-core/
cd ~
cd mycroft-core
chmod a+x neonXenial.sh
chmod a+x neonBionic.sh
chmod a+x installmycroft.sh

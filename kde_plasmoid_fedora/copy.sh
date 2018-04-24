#!/bin/bash

cp /tmp/installers/kde_plasmoid_fedora/depsFed25.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_fedora/depsFed27.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_fedora/installmycroft.sh ~/mycroft-core/
cd ~
cd mycroft-core
chmod a+x dependencies.sh
chmod a+x installmycroft.sh

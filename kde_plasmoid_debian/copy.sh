#!/bin/bash

cp /tmp/installers/kde_plasmoid_debian/depsXenial.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_debian/depsBionic.sh ~/mycroft-core/
cp /tmp/installers/kde_plasmoid_debian/installmycroft.sh ~/mycroft-core/
cd ~
cd mycroft-core
chmod a+x dependencies.sh
chmod a+x installmycroft.sh

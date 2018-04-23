#!/bin/bash

cp /kde_plasmoid_debian/dependencies.sh ~/mycroft-core/
cp /kde_plasmoid_debian/installmycroft.sh ~/mycroft-core/
cd ~
cd mycroft-core
chmod a+x dependencies.sh
chmod a+x installmycroft.sh

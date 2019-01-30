#!/bin/bash

# @version 1.0.0
# @author Steffen kroggel <developer@steffenkroggel.de>

if [ -f scripts/typo3-cleanup.sh ]; then
    ./vendor/bin/typo3cms install:fixfolderstructure
    ./vendor/bin/typo3cms cache:flush --force
    if [ -f ./web/typo3conf/LocalConfiguration.php ]; then
        ./vendor/bin/typo3cms database:updateschema;
    fi
else
    echo "This script has to be executed from project root."
fi

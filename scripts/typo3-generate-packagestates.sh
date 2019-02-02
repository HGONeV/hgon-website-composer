#!/bin/bash

# @version 1.0.0
# @author Steffen kroggel <developer@steffenkroggel.de>

if [ -f scripts/typo3-generate-packagestates.sh ]; then
    ./vendor/bin/typo3cms install:generatepackagestates
else
    echo "This script has to be executed from project root."
fi

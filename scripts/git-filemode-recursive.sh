#!/bin/bash

# Set GIT filemode recursively
#
# @version 1.0.2
# @author Steffen Kroggel <developer@steffenkroggel.de>

if [ -f scripts/git-filemode-recursive.sh ]; then
    find ./ -type d -name '.git' | while read dir ; do sh -c "cd $dir/../ && git config core.filemode false"; done
else
    echo "This script has to be executed from project root."
fi


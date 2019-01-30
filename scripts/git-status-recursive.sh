#!/bin/bash

# Check for GIT status recursively
#
# @version 1.0.2
# @author Steffen Kroggel <developer@steffenkroggel.de>


if [ -f scripts/git-status-recursive.sh ]; then
    find ./ -type d -name '.git' | while read dir ; do sh -c "cd $dir/../ && echo -e \"\nGIT STATUS IN ${dir//\.git/}\" && git status -s"; done
else
    echo "This script has to be executed from project root."
fi


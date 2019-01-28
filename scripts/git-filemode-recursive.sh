# Set GIT filemode recursively
# Version 1.0.1
find ../ -type d -name '.git' | while read dir ; do sh -c "cd $dir/../ && git config core.filemode false" ; done
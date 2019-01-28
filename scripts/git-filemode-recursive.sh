# Check for GIT status recursively
find ../ -type d -name '.git' | while read dir ; do sh -c "cd $dir/../ && git config core.filemode false" ; done
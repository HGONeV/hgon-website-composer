# Check for GIT status recursively
find ../../ -type d -name '.git' | while read dir ; do sh -c "cd $dir/../ && echo -e \"\nGIT FILEMODE IN ${dir//\.git/}\" && git config core.filemode false" ; done
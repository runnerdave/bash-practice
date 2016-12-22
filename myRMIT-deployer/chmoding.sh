#!/bin/bash
#This script changes the permissions in the files, as is needed for the deployment
#process, make sure that this runs as the normal user that scp the files to the server 
#and not as javauser
dirToChmod="$1"
ext="*.war"

echo -e "display files before changes:\n"
ls -l $dirToChmod$ext
chmod u+x -R $dirToChmod
chmod u+r -R $dirToChmod
chmod o+r -R $dirToChmod
chmod o+x -R $dirToChmod
chmod o+w -R $dirToChmod
echo -e "display files after changes:\n"
ls -l $dirToChmod$ext
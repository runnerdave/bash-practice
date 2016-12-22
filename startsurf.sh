#!/bin/bash
# This script provides an easy way for users to choose between browsers.
echo "These are the web browsers on this system:"
# Start here document
cat << INFOPATH
mozilla
links
lynx
konqueror
opera
netscape
INFOPATH
# End here document
echo -n "Which is your favorite? "
read browser
echo "Starting $browser, please wait..."
$browser &
#!/bin/bash
#This script uploads the public key to the remote server and sets all the necessary steps
# to allow for no password connection
SERVER="$1"

if [ "$#" != "1" ]; then
    echo -e "Usage of the passwordless script:\t$0 'SERVER'\n"
    exit 1
else
    ssh $SERVER mkdir -p .ssh
    cat ~/.ssh/id_rsa.pub | ssh $SERVER 'cat >> .ssh/authorized_keys'
    ssh $SERVER "chmod 700 .ssh; chmod 640 .ssh/authorized_keys"
fi
exit 0
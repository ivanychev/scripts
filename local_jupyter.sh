#!/bin/bash

# Before this!
# gcloud compute ssh  --zone=<host-zone> \
#   --ssh-flag="-D" --ssh-flag="1080" --ssh-flag="-N" --ssh-flag="-n" <host-name>

/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --proxy-server="socks5://localhost:1080" \
 --host-resolver-rules="MAP * 0.0.0.0 , EXCLUDE localhost" \
 --user-data-dir=/tmp/
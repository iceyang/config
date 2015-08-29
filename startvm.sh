#!/bin/bash

vm=$1

if [ -n "$vm" ]
then
  VBoxManage startvm "$vm" --type headless
else
  echo "error params. use startvm <vmname|uuid>"
fi

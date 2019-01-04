#!/bin/bash


selection=`echo -e $(lpass ls | awk -F '[/[]' '{print $(NF-1)"\\\n"}') | dmenu`

if [ "$selection" != "" ]; then
    lpass show -c --password $selection &
    if [ "$1" != "" ]; then
      #clear clipboard after specified time
      sleep $1 
      xsel -bc
    fi
fi

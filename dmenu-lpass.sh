#!/bin/bash


selection=`echo -e $(lpass ls | awk -F '[/[]' '{print $(NF-1)"\\\n"}') | dmenu`

if [ "$selection" != "" ]; then
    lpass show -c --password $selection &
fi

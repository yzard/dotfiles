#!/bin/bash

distro=`lsb_release -a | grep "Distributor\ ID" | cut -d: -f2 | tr -d ' \t'`

if [ "$distro" == "Fedora" ]
then
    source ./fedora.sh
elif [ "$distro" == "Ubuntu" ]
then
    source ./ubuntu.sh
fi

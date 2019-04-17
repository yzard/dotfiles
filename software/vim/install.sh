#!/bin/bash

distro=`lsb_release -a | grep "Distributor\ ID" | cut -d: -f2 | tr -d ' \t'`

echo "installing for $distro"

cd $( dirname "${BASH_SOURCE[0]}" )
source ./${distro}.sh

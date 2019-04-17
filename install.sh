#!/bin/bash

for i in `ls software`;
do
    command="source software/$i/install.sh"
    echo "Execting $command" && eval $command
done

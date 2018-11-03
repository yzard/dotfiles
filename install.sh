#!/bin/bash

cd software

for i in *.sh;
do
    echo "Execting $i"
    source $i
done

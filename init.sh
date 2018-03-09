#!/bin/bash

if [[ -z "$1" ]]; then
    exec coredns -conf /data/Corefile
    exit
fi

if [[ -e "$1" ]]; then
    exec $@
    exit
fi
exec coredns $@

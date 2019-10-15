#!/bin/bash

shopt -s expand_aliases
source ~/.bashrc.local
ddcocp4lab

oc delete volumesnapshot/snapshot-demo

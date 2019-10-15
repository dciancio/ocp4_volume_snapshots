#!/bin/bash

shopt -s expand_aliases
source ~/.bashrc.local
ddcocp4lab
oc adm policy add-scc-to-user hostnetwork -z snapshot-controller-runner



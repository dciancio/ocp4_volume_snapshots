#!/bin/bash

oc adm policy add-scc-to-user hostnetwork -z snapshot-controller-runner -n snapshots


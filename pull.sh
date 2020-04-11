#!/bin/bash
#find . -not -path "./build" -type d -mindepth 1 -maxdepth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;
git submodule foreach git pull

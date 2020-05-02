#!/bin/bash
#executed before server is launched
#
# Idea is to have a standard set of plugins and if they don't exists
# in data yet, they get overwritten
#
template=/home/tester/minecraft/HeywikiPaperServer/setup
data=/home/tester/minecraft/HeywikiPaperServer/build
echo "$data"

if [ ! -e $data/plugins ]; then
  echo "does not exist"
fi

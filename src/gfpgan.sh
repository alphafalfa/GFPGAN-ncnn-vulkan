#!/bin/bash
#

mkdir -p ./results 2>/dev/null
mkdir -p ./processed 2>/dev/null

for i in ./inputs/*; do
  $HOME/.local/bin/gfpgan-ncnn-vulkan $i
  mv -v -- "result.png" "./results/$(date +%T).png"
done


mv -v ./inputs/* ./processed/

cd -v ./results/

sh -v -c ptoj.sh

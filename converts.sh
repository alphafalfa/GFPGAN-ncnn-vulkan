#!/bin/bash
#
mkdir -p ./results 2>/dev/null
mkdir -p ./processed 2>/dev/null

for i in ./inputs/*.jpg; do
  ./gfpgan-ncnn-vulkan $i
  mv -- "result.png" "./results/${i/%.\/inputs\///}-$(date +%T).png"
done


mv -v ./inputs/*.jpg ./processed/

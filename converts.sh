#!/bin/bash
#
for i in ./inputs/*.jpg; do
  ./gfpgan-ncnn-vulkan $i
  mv result.png "./outputs/GFPGAN-$(date +%T).png"
done



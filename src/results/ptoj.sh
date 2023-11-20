#!/bin/bash
#


mkdir -p ./smaller 2>/dev/null
mkdir -p ./processed 2>/dev/null

for i in ./*.png; do
  convert $i -resize '1920x1920' \
    -flatten -alpha off ./smaller/$(date +%T).jpg
done

mv -v *.png ./processed/

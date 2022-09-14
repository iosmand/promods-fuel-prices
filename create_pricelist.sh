#!/bin/bash
FILES="*.sui"
for f in $FILES
do
  country=$(echo $f | cut -d'.' -f1)
  fuelprice=$(grep fuel_price $f | sed 's/\tfuel_price: //')
  echo $country=$fuelprice >> list.txt
  echo $country=$fuelprice
done
#cat list.txt
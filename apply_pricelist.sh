#!/bin/bash
"list.txt"
FILES="*.sui"
for f in $FILES
do
  country=$(echo $f | cut -d'.' -f1)
  if test -n ${!country}
    then 
      #echo "dolu"
      echo "country" $country
      echo "price" ${!country}
      #cat $country.sui
      #sleep 1
      sed -i "s/fuel_price:....../fuel_price: ${!country}/g" $f
      #cat $country.sui
    else
      echo "bos"
      echo "country" $country
      echo "price" ${!country}
  fi
done
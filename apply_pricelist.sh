#!/bin/bash
aland="2.22"
albania="1.99"
andorra="1.64"
armenia="1.13"
austria="1.958"
belarus="0.98"
belgium="1.99"
bosnia="1.7"
bulgaria="1.65"
croatia="1.86"
cyprus="1.84"
czech="1.82"
denmark="2.01"
estonia="1.9"
faroe="2.18"
finland="2.167"
france="2.755"
georgia="1.49"
germany="2.135"
greece="1.91"
hungary="1.63"
iceland="2.3"
ireland="1.95"
isleofman="2.18"
italy="1.83"
jersey="2.18"
latvia="1.84"
liecht="2.16"
lithuania="1.83"
luxembourg="1.877"
macedonia="1.59"
malta="1.21"
mnegro="1.56"
moldova="1.42"
monaco="2"
netherlands="2.04"
nireland="2.25"
norway="2.26"
poland="1.59"
portugal="1.82"
romania="1.82"
russia="0.89"
sanmarino="1.73"
serbia="1.88"
slovakia="1.85"
slovenia="1.8"
spain="1.90"
svalbard="2.26"
sweden="2.29"
switzerland="2.4"
turkey="1.37"
ukraine="1.445"
uk="2.13"
FILES=$(ls *.sui)
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
      sed -i "s/fuel_price:..*/fuel_price: ${!country}/g" $f
      #cat $country.sui
    else
      echo "bos"
      echo "country" $country
      echo "price" ${!country}
  fi
done
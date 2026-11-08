#!/bin/bash
set -e

target=$1
dest=$2
key=$3
temp_aligned=`mktemp -d`

for apk in $target; do
  basename=`basename $apk`
  zipalign -f -p 4 $apk "${temp_aligned}/${basename}" 
  apksigner sign --ks $key --out "${dest}/${basename}" "${temp_aligned}/${basename}" 
done


#! /bin/bash

rm -f docs/*.html

for f in src/*.txt
do
  cat $f >> docs/index.html
done

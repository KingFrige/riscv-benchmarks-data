
#!/bin/bash

IFS=$'\n'
array=($(find . -name *.tma))
unset IFS

len=${#array[*]}
i=0

while [ $i -lt $len ]
do
  echo ${array[$i]}
  $PERF_TOOLS/tma.py --path ${array[$i]}
  let i++
done

mv *.png output/

#!/bin/bash
yyyymm=${@:$#}
yyyy=${yyyymm:0:4}
mm=${yyyymm:4:2}
days=`cal $((mm)) $((yyyy)) | awk 'NF {DAYS=$NF}; END {print DAYS}'`
for i in `seq 1 $days`
do
python sample.py --yyyymm $yyyymm --d $i
done
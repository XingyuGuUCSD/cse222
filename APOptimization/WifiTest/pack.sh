#!/bin/bash
FNAME=$1-$(date +%s)
mkdir $FNAME
mv bandwidth.txt $FNAME
mv latency.txt $FNAME
mv ap_selected.txt $FNAME
mv failed.txt $FNAME

TOTAL=$(grep MAC $FNAME/ap_selected.txt $FNAME/failed.txt | wc -l)
echo "$TOTAL APs tested. Now moved to folder $FNAME"

exit 0

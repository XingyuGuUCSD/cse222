#!/bin/bash
BAND_FILE=bandwidth.txt
LATE_FILE=latency.txt
AP_SELECTED=ap_selected.txt
FAILED=failed.txt
AP_MAC=$1

if ! ./check.sh $AP_MAC; then
	exit 1
fi

grep -B 2 -A 31 $AP_MAC ap_list.txt >> $FAILED

echo "[Complete]"
exit 0


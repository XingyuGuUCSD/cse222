#!/bin/bash
AP_SELECTED=ap_selected.txt
FAILED=failed.txt
AP_MAC=$1

if grep -q $1 $AP_SELECTED; then
	echo "[$1 is already tested]"
	exit 1
fi
if grep -q $1 $FAILED; then
	echo "[$1 is already tested]"
	exit 1
fi

if ! grep -q $AP_MAC ap_list.txt; then
	echo "[$AP_MAC is not in AP list]"
	exit 1
fi

exit 0


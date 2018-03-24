#!/bin/bash
BAND_FILE=bandwidth.txt
LATE_FILE=latency.txt
AP_SELECTED=ap_selected.txt
FAILED=failed.txt
AP_MAC=$1

if ! ./check.sh $AP_MAC; then
	exit 1
fi

grep -B 2 -A 31 $AP_MAC ap_list.txt >> $AP_SELECTED

echo "==== $AP_MAC ====" >> $BAND_FILE
wget http://extrasensory.ucsd.edu/data/primary_data_files/ExtraSensory.per_uuid_features_labels.zip -o temp
tail -n 2 temp >> $BAND_FILE
rm temp ExtraSensory.per_uuid_features_labels.zip

echo "==== $AP_MAC ====" >> $LATE_FILE
node /home/whoami/WifiTest/test.js >> $LATE_FILE

echo "[Complete]"
exit 0


# README
1. Need to scan all the APs and store in ap_list.txt.
2. `touch ap_selected.txt` for test successful APs.
3. `touch failed.txt` for test failed APs.
4. Connect to an AP in the list. Use `./check.sh $MAC` to check.
5. If connection failed, run `./fail.sh $MAC`.
6. If connection succeed, run `./test.sh $MAC`.
7. Go back to 4 until all listed AP are tested.
8. Use `./pack.sh $NAME` to pack the data for this spot.
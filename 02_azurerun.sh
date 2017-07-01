#! /bin/sh

for com in "sort" "sort --parallel=8" "sort --parallel=7" "sort --parallel=6" "sort --parallel=5" "sort --parallel=4" "sort --parallel=3" "sort --parallel=2" "sort --parallel=1"
do
	echo "purging caches..."
	sync && sudo sh -c "/usr/bin/echo 3 > /proc/sys/vm/drop_caches"
	echo executing ${com}
	time ${com} dicevalue.txt > /dev/null
	echo
done

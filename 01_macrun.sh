#! /bin/sh

for com in "sort" "gsort" "gsort --parallel=4" "gsort --parallel=3" "gsort --parallel=2" "gsort --parallel=1"
do
	echo "purging caches...\n"
	sync && sudo purge
	echo executing ${com}
	time ${com} input.txt > /dev/null
done


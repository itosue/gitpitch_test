#! /bin/sh

seq 100000000 | awk 'BEGIN{ srand('"$RANDOM"')  } { printf "%d\n", 1 + rand() * 6 }' > input.txt

#!/usr/bin/bash
for filename in ./tests/*.lp; do
	localname=${filename##*/}
	outname=${localname%.*}
	echo $localname
	../sourceClingo/bin/clingo -n 0 ../MartianAP.lp $filename | awk '/Answer:/{getline; print}' > ./results/$outname
done

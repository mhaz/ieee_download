#!/bin/bash
# Downloads several ieee papers from ieeexplore
# Takes the the article numbers (from the url) as an input
# Downloads the pdfs with the article title
#
# There is no error checking or anything :^)

total=$(wc -l $1 | cut -d' ' -f1)
i=1
for article in $(cat $1)
	do
		echo "$i of $total"
		./ieee_get.sh $article
		sleep 0.1
		let i++
	done

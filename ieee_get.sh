#!/bin/bash
#First argument is the number of the document on ieeexplore

# Get the paper's title
# Parse the html <title> tag           --> Copy pasted from stackoverflow :^)
# Remove the " - IEEE..." at the end   --> reverse the string, cut the first "-" reverse again
# Remove the tabs at the begining      --> replace the first tab character by nothing
# Remove the last space                --> replace the last character by nothing
# Replace the spaces with underscores  --> replace spaces with underscores :^)
TITLE=$(wget -q -O - "http://ieeexplore.ieee.org/document/$1" | sed -n 's/<title>\(.*\)<\/title>/\1/Ip' | rev | cut -d'-' -f 2- | rev | sed -e 's/^[ \t]*//' | sed s'/.$//' | sed -e 's/ /_/g')

echo $TITLE
#Download the paper and name it according to its title
wget -q "http://ieeexplore.ieee.org/stampPDF/getPDF.jsp?arnumber=$1" -O $(echo $TITLE.pdf)
echo "downloaded"

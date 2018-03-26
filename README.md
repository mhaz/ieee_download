# Download papers from IEEE
These bash script are used to download ieee papers from  ieeexplore with `wget`
This script parses the html to get the title. Then it downloads the paper and names it according to its title.
This is a very simple script and there is no error checking.

### Files
`ieee_get.sh` takes the number of the article as an argument (from the url)
`ieee_downloader.sh` takes a file with the numbers of the papers you want to download and download them all.

### How to use
I use `ieee_downloader.sh` to download all papers from my PhD advisor so I can re-read these offline.
Because the ieeexplore webpage makes it difficult for people to wget searches I use a firefox add-on to copy all links the page I want to download and filter this.  For example I save the links in a file `ieeeurls` and `cat ieeeurls | grep document | cut -d'/' -f 5 | uniq >> articles_numbers`. Or I open all the ones I want to download in tabs, favorite all tabs then parse the .json. This is enough for my purpose.

If you want to use `ieee_get`:
```
chmod +x ieee_get.sh
./ieee_get.sh ARTICLE_NUMBER # ARTICLE_NUMBER is the number from the url
```

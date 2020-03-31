Add Nerd Font symbols to Inconosolata-g.

This is very dirty. No checks or anything. I might clean it at some point.
This assumes an Ubuntu machine. Created it to mainly document the process.

This downloads and gets all dependencies to build the font and builds the font. 

Download dependencies via apt. Afterwards, download what's needed 
from the the nerd font repo. This repo is very large. To not have to 
download the full repo this uses git-svn to only get the files needed. 
Once we have the files, build the font with all the nerd font symbols.


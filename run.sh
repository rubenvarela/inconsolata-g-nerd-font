#!/bin/bash

curl -L https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/font-patcher -o font-patcher
chmod u+x ./font-patcher

## Install dependencies
sudo apt install python3-fontforge

## I use git mainly. Installing git-svn then
sudo apt install git-svn
mkdir -p src/glyphs
cd src/glyphs
git svn init https://github.com/ryanoasis/nerd-fonts/trunk/src/glyphs
git svn fetch
cd ../../

## if you want to use svn, this should work
#sudo apt install subversion
#mkdir src
#cd src
#svn checkout https://github.com/ryanoasis/nerd-fonts/trunk/src/glyphs
#cd ../

python3 ./font-patcher --progressbar -c inconsolata-g_font/Inconsolata-g.otf

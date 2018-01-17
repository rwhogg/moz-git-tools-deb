#!/usr/bin/env zsh

rm -f moz-git-tools.deb
mkdir -p usr/share/doc/moz-git-tools
mkdir -p usr/bin
cp moz-git-tools/{LICENSE,README.markdown} usr/share/doc/moz-git-tools
cp GPL-2 usr/share/doc/moz-git-tools
cp moz-git-tools/git* usr/bin
rm -f usr/bin/git-root
fpm -s dir -t deb -p moz-git-tools.deb -n moz-git-tools-unofficial -d git -m "Bob W. Hogg" usr

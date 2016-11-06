#!/bin/bash
RC=rc.lua
OUT=/etc/xdg/awesome/$RC
git pull origin master
git mergetool --tool=meld
git checkout main
cp -f $OUT ./
git commit -m "Update from awesome distro config." -a
git checkout master
git merge main -m "Merge with awesome distro config."
git mergetool --tool=meld
git rm -f *.orig
git commit -a
git push origin master

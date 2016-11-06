#!/bin/bash
RC=rc.lua
OUT=/etc/xdg/awesome/$RC
git checkout main
cp -f $OUT ./
git commit -m "Update." -a
git checkout master
git merge main -m "Merge with upstream."
git mergetool --tool=meld



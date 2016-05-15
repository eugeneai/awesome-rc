#!/bin/bash
RC=rc.lua
OUT=/etc/xdg/awesome/$RC
meld $RC $OUT
git add $RC


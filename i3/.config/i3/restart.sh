#!/usr/bin/env sh

killall picom
i3-msg restart
picom --experimental-backend &

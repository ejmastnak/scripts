#!/bin/sh
# Sets wallpaper on X display :0 to a random jpg file in my wallpapers directory

DISPLAY=:0 feh --no-fehbg --bg-scale --randomize ~/Pictures/wallpapers/*.jpg

#!/bin/bash
# Used to external display on and off
# Use case: connecting to/disconnecting from external monitor

# xrandr output with external display CONNECTED
# HDMI-1 connected primary 1920x1080 [...]

# xrandr output with internal display DISCONNECTED
# HDMI-1 connected primary [...]

# Idea: grep for 'HDMI-1 connected primary ' followed by a number

external=HDMI-1

if xrandr | grep -q "$external connected [0-9]"
then  # if external display is ON, turn it OFF
  xrandr --output "$external" --off
else  # if external display is OFF, turn it ON
  xrandr --output "$external" --auto
fi

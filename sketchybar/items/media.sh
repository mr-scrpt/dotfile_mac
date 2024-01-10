#!/bin/bash

sketchybar --add item media e \
           --set media label.color=$COLOR_PEACH_LIGHT \
                       label.max_chars=30 \
                       icon.padding_left=0 \
                       icon=􀑪             \
                       icon.color=$COLOR_PEACH_ACCENT  \
                       background.drawing=off \
                       script="$PLUGIN_DIR/media.sh" \
           --subscribe media media_change

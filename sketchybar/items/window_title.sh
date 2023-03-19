#!/usr/bin/env sh

sketchybar --add item space_separator left                            \
--add item window_title left                               \
--set window_title \
      script="$PLUGIN_DIR/window_title.sh" \
      label.color=0xFFEA76CB             \
      icon.drawing=off                     \
      label.font="$FONT:Semibold:15.0"         \
--subscribe window_title front_app_switched

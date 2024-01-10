#!/bin/bash

SPACE_SIDS=(1 2 3 4 5 6 7 8 9 10)
SPACE_NAME=('_' "work" "files" "messenger" "lab" "education" "media" "other" "other" "other")
SPACE_ICON=('_' "􀙗" "􀈕" "􀌤" "􁂶" "􀫓" "􀲰" "􀈕" "􀈕" "􀈕")

icon_strip=" "
for sid in "${SPACE_SIDS[@]}"
do
  icon_strip+=" $($SPACE_NAME[$sid])"
  sketchybar --add space space.$sid left                                 \
             --set space.$sid space=$sid                                 \
                              icon="$sid ${SPACE_NAME[sid]}" \
                              label="${SPACE_ICON[sid]}" \
                              label.font="sketchybar-app-font:Regular:16.0" \
                              label.padding_right=20                     \
                              script="$PLUGIN_DIR/space.sh" \
                              # label.y_offset=-1                          \
done

sketchybar --add item space_separator left                             \
           --set space_separator icon="􁉃"                                \
                                 icon.color=$COLOR_PEACH_LIGHT \
                                 icon.padding_left=4                   \
                                 label.drawing=off                     \
                                 background.drawing=off                \
           --subscribe space_separator space_windows_change

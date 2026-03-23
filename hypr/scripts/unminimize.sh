#!/bin/bash
addr=$(hyprctl clients -j | jq -r '[.[] | select(.workspace.name == "special:minimized")] | last | .address')
[ -n "$addr" ] && hyprctl dispatch movetoworkspace "e+0,address:$addr"

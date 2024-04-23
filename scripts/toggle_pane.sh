#! /bin/env sh

if [ $(tmux display-message -p '#P') -eq 1 ]; then
    if [ $(tmux display-message -p '#{window_zoomed_flag}') -eq 0 ]; then
        tmux resize-pane -Z -t 1
    else
        tmux resize-pane -Z -t 1
        tmux select-pane -t 2
    fi
else
    tmux select-pane -t 1
    tmux resize-pane -Z -t 1
fi

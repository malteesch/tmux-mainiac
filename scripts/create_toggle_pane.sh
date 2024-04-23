#! /bin/env sh

num_panes=$(tmux list-panes | wc -l)
if [[ $num_panes -eq 1 ]]; then
    tmux split-window -d
    tmux resize-pane -Z -t 1
fi

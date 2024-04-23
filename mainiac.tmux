#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TOGGLE_KEY=$(tmux show-option -gqv @mainiac_toggle_key | cut -d " " -f 2)

if [[ -z "$TOGGLE_KEY" ]]; then
    TOGGLE_KEY='M-,'
fi

tmux set-hook -g window-linked[99] "run-shell '$CURRENT_DIR/scripts/create_toggle_pane.sh'"
tmux bind-key -n "$TOGGLE_KEY" "run-shell '$CURRENT_DIR/scripts/toggle_pane.sh'"

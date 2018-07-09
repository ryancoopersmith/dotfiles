#!/usr/bin/env zsh

read "confirm?End all open tmux sessions? (Y/N): "

if [[ "$confirm" =~ ^[Yy](es)*$ ]]; then
    for s in $(tmux ls | awk '{print $1}' | sed -e 's/://g'); do
        mux stop "$s"
        echo "Ended session ${s}"
    done

    exit 0
else
    echo "Did not end tmux sessions"
    exit 1
fi

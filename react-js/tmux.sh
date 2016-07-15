#!/bin/sh

tmux start-server
tmux new-session -d -s dock -n code
tmux new-window -tdock:0 -n code
tmux split-window -tdock:0 -p 50 -h
tmux new-window -tdock:1 -n beaker
tmux new-window -tdock:2 -n ssh

tmux send-keys -tdock:0 'cd .; clear' C-m
tmux send-keys -tdock:1 'cd .; clear' C-m
tmux send-keys -tdock:2 'cd .; clear' C-m

tmux select-window -tdock:0
tmux attach-session -d -tdock

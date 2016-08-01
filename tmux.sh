#!/bin/sh

tmux start-server
tmux new-session -d -s udem -n code
tmux new-window -tudem:0 -n code
tmux split-window -tudem:0 -p 50 -h
tmux new-window -tudem:1 -n beaker
tmux new-window -tudem:2 -n ssh

tmux send-keys -tudem:0 'cd .; clear' C-m
tmux send-keys -tudem:1 'cd .; clear' C-m
tmux send-keys -tudem:2 'cd .; clear' C-m

tmux select-window -tudem:0
tmux attach-session -d -tudem

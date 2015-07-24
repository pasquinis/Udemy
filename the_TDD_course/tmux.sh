#!/bin/sh

tmux start-server
tmux new-session -d -s Udemy -n code
tmux new-window -tUdemy:0 -n code
tmux split-window -tUdemy:0 -p 40 -h
tmux new-window -tUdemy:1 -n ssh

tmux send-keys -tUdemy:0 'cd ~/projects/Udemy; clear' C-m
tmux send-keys -tUdemy:1 'cd ~/project/Udemy; export PS1="# "; clear' C-m

tmux select-window -tUdemy:0
tmux attach-session -d -tUdemy

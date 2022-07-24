#!/bin/sh

session="$(tmux display-message -p '#S')"
window_status="$(tmux has-session -t term 2>&1)"
if [ -n "$window_status" ]; then
  tmux new-window -n term -d
  tmux send-keys -t $session:term 'eval "$(starship init zsh)"' C-m 
  tmux send-keys -t $session:term 'tmux resize-pane -R 25' C-m 
  tmux send-keys -t $session:term 'clear' C-m 
  sleep 1
fi
tmux join-pane -h -s term -t 0
tmux resize-pane -R 25

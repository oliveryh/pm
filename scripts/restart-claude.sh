#!/bin/bash
# Restart Claude Code in the vault tmux session to clear daily context
tmux send-keys -t vault:0.0 C-c ""
sleep 3
tmux send-keys -t vault:0.0 "claude --channels plugin:telegram@claude-plugins-official --remote-control" Enter

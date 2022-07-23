
# tmux-power config
set -g @tmux_power_prefix_highlight_pos 'L'
set -g @tmux_power_show_web_reachable true
set -g @tmux_power_time_format '%I:%M %p'
set -g status-right '#(gitmux "#{pane_current_path}")'

# tmux-sidebar config
set -g @sidebar-tree-command 'tree -C'
set -g @sidebar-tree-pager 'less -r'

# tmux-browser config
set -g @open_browser_key 'B'
set -g @new_browser_window '"/Applications/Brave Browser.app/Contents/MacOS/Brave Browser" --new-window'
set -g @browser_session_dir '$HOME/.tmux/browser-sessions'
set -g @browser_launch_on_attach '1'
set -g @browser_close_on_deattach '0'
set -g @browser_dont_hook_to_resurrect '0'


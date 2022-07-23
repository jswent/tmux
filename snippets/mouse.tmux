# Emulate scrolling by sending up and down keys if these commands are running in the pane
tmux_commands_with_legacy_scroll="nvim nano less more man"

bind-key -T root WheelUpPane \
    if-shell -Ft= '#{?mouse_any_flag,1,#{pane_in_mode}}' \
        'send -Mt=' \
        'if-shell -t= "#{?alternate_on,true,false} || echo \"#{tmux_commands_with_legacy_scroll}\" | grep -q \"#{pane_current_command}\"" \
            "send -t= Up Up Up" "copy-mode -et="'

bind-key -T root WheelDownPane \
    if-shell -Ft = '#{?pane_in_mode,1,#{mouse_any_flag}}' \
        'send -Mt=' \
        'if-shell -t= "#{?alternate_on,true,false} || echo \"#{tmux_commands_with_legacy_scroll}\" | grep -q \"#{pane_current_command}\"" \
            "send -t= Down Down Down" "send -Mt="'

SUPPORTED_VERSION="1.9"

# Key binding options and defaults

default_logging_key="P" # Shift-p
logging_key=$(tmux show-option -gqv "@logging-key")
logging_key=${logging_key:-$default_logging_key}

default_pane_screen_capture_key="M-p" # Alt-p
pane_screen_capture_key=$(tmux show-option -gqv "@screen-capture-key")
pane_screen_capture_key=${pane_screen_capture_key:-$default_pane_screen_capture_key}

default_save_complete_history_key="M-P" # Alt-Shift-p
save_complete_history_key=$(tmux show-option -gqv "@save-complete-history-key")
save_complete_history_key=${save_complete_history_key:-$default_save_complete_history_key}

default_snapshot_and_log_key="C-P" # Control-Shift-p
snapshot_and_log_key=$(tmux show-option -gqv "@snapshot_and_log")
snapshot_and_log_key=${snapshot_and_log_key:-$default_snapshot_and_log_key}

default_clear_history_key="M-c" # Alt-c
clear_history_key=$(tmux show-option -gqv "@clear-history-key")
clear_history_key=${clear_history_key:-$default_clear_history_key}

# General options
filename_suffix="#{session_name}-#{window_name}-p#{pane_index}-%Y_%m_%d_%H:%M:%S.log"

# Logging options
default_logging_path="$HOME"
logging_path=$(tmux show-option -gqv "@logging-path")
logging_path=${logging_path:-$default_logging_path}
! [ -d "$logging_path" ] && mkdir -p "$logging_path" 2>/dev/null

default_logging_filename="tmux-${filename_suffix}"
logging_filename=$(tmux show-option -gqv "@logging-filename")
logging_filename=${logging_filename:-$default_logging_filename}

logging_full_filename=$(tmux show-option -gqv "@logging-full-filename")
logging_full_filename=${logging_full_filename:-$logging_path/$logging_filename}

# Screen capture options
default_screen_capture_path="$HOME"
screen_capture_path=$(tmux show-option -gqv "@screen-capture-path")
screen_capture_path=${screen_capture_path:-$default_screen_capture_path}
! [ -d "$screen_capture_path" ] && mkdir -p "$screen_capture_path" 2>/dev/null

default_screen_capture_filename="tmux-screen-capture-${filename_suffix}"
screen_capture_filename=$(tmux show-option -gqv "@screen-capture-filename")
screen_capture_filename=${screen_capture_filename:-$default_screen_capture_filename}

screen_capture_full_filename="${screen_capture_path}/${screen_capture_filename}"

# Save complete history options
default_save_complete_history_path="$HOME"
save_complete_history_path=$(tmux show-option -gqv "@save-complete-history-path")
save_complete_history_path=${save_complete_history_path:-$default_save_complete_history_path}
! [ -d "$save_complete_history_path" ] && mkdir -p "$save_complete_history_path" 2>/dev/null

default_save_complete_history_filename="tmux-history-${filename_suffix}"
save_complete_history_filename=$(tmux show-option -gqv "@save-complete-history-filename")
save_complete_history_filename=${save_complete_history_filename:-$default_save_complete_history_filename}

save_complete_history_full_filename="${save_complete_history_path}/${save_complete_history_filename}"

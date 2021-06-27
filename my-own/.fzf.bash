# Setup fzf
# ---------
if [[ ! "$PATH" == */home/zorkij/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/zorkij/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/zorkij/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/zorkij/.fzf/shell/key-bindings.bash"

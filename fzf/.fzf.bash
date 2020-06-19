# Setup fzf
# ---------
if [[ ! "$PATH" == */home/blabaere/.fzf/bin* ]]; then
  export PATH="$PATH:/home/blabaere/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/blabaere/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/blabaere/.fzf/shell/key-bindings.bash"


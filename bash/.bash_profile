#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Adding my personal scripts to path
export PATH="${PATH}:/home/folclore/bin"
export PATH="$HOME/.pyenv/shims:$HOME/.pyenv/bin:$PATH"

# Autostart X at Login 
# if [ -z "$DISPLAY" ] && [[ "$XDG_VTNR" -eq 1 ]]; then
#   exec startx
# fi

eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Created by `pipx` on 2024-08-13 21:19:01
export PATH="$PATH:/home/folclore/.local/bin"

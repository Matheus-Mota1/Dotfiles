#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Adding my personal scripts to path
export PATH="${PATH}:/home/folclore/bin"

# Autostart X at Login 
if [ -z "$DISPLAY" ] && [[ "$XDG_VTNR" -eq 1 ]]; then
  exec startx
fi


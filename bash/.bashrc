#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias lla='ls -la --color=auto'
alias lt='tree'
alias grep='grep --color=auto'
alias py='python'
alias vi='nvim'
alias du='du -h -d 1'
alias clipboard='xclip -selection clipboard'

PS1='[\u@\h \W]\$ '

pacman() {
    if [[ "$1" == "-Sy" ]]; then
        echo "ERROR: -Sy options do a partial upgrade that may break your system are your sure ?"
    else
        /usr/bin/pacman "$@"
    fi
}

venv() {
    # Check if we are already in a virtual environment
    if [[ -n "$VIRTUAL_ENV" ]]; then
        deactivate
        echo "Deactivated environment: $VIRTUAL_ENV"
        return
    fi

    # If a directory is provided, try to activate it
    if [[ -d "$1" && -f "$1/bin/activate" ]]; then
        source "$1/bin/activate"
        echo "Activated environment: $1"
    # Otherwise, try to activate a default .venv directory
    elif [[ -f ".venv/bin/activate" ]]; then
        source ".venv/bin/activate"
        echo "Activated environment: .venv"
    else
        echo "Please provide a valid directory containing a Python virtual environment."
    fi
}


# Created by `pipx` on 2024-08-13 21:19:01
export PATH="$PATH:/home/folclore/.local/bin"

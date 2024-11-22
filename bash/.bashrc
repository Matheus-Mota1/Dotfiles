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

PS1='[\u@\h \W]\$'

# I don't want startship to run in the TTYs
if [[ x$DISPLAY != x ]]; then
    eval "$(starship init bash)" 
fi

# Managing ssh-agent between loggings and terminal sessions
# Keeping only one session running

# if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
# fi
# if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
#    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
# fi
 
### ~/.bashrc is used instead of the upstream suggested ~/.bash_profile on Arch
# --inherit any-once for wayland, issue 148
# --confhost option is broken, issue 143
eval $(keychain --quiet --inherit any-once --agents ssh)

# Prevent partial upgrades, since pacman doesn't support it 
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

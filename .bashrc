shopt -s autocd
shopt -s extglob
shopt -s hostcomplete

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# prompt
PS1='[\u@\h \w]\$ '

alias ls='ls -latrF'
alias vim='nvim'
alias grep='grep --color=auto'
alias ga='git add'
alias gp='git push'
alias gc='git commit -S -m'
alias gl='git log --show-signature'
alias gs='git status'
alias gd='git diff'

## ls on cd
#function cd {
#    builtin cd "$@" && ls -latrF
#    }

# I want my own binaries in $PATH
if [ -d "$HOME/bin" ]; then
	PATH="$HOME/bin:$PATH"
fi

# ssh-agent via systemd user-service
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"

# enable bash_completion
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

export GPG_TTY=$(tty)

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

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=~/.npm-global/bin:$PATH
export PATH=~/.local/bin:$PATH

alias ls='ls --color=auto'
alias l='ls -a --color=auto'
alias ll='ls -la'
alias v='lvim'
alias c='clear'

PS1='\[\e[0;97;48;5;232m\]╔\[\e[0;1;97;48;5;69m\]⇒ \[\e[0;38;5;232;48;5;69m\]\u\[\e[0;48;5;69m\] \[\e[0;1;38;5;69;107m\]▶ \[\e[0;38;5;232;107m\] $(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2)  \e[0;1;97;48;5;172m\]▶ \[\e[0;38;5;232;48;5;172m\]\h\[\e[0;38;5;214;48;5;172m\] \[\e[0;30m\]...\n\[\e[0;97;48;5;232m\]╚\[\e[0;2;97m\][\[\e[0;97m\]\w\[\e[0;97m\]] \[\e[0m\]> \[\e[0m\]'


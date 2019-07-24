## LoKe's ~/.bashrc
[ -z "$PS1" ] && return

# Basic options
export HISTCONTROL=ignoredups
export COLORFGBG='default;default'

shopt -s checkwinsize

# Aliases
alias ls='ls -h --color=auto'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cim='vim'
alias back='cd $OLDPWD'
alias runlevel='sudo /sbin/init'
alias grep='grep --color=auto'

# Prompt
BGREEN='\[\033[1;32m\]'
GREEN='\[\033[0;32m\]'
BRED='\[\033[1;31m\]'
RED='\[\033[0;31m\]'
BBLUE='\[\033[1;34m\]'
BLUE='\[\033[0;34m\]'
NORMAL='\[\033[00m\]'
PS1="${BLUE}(${BRED}\w${BLUE}) ${NORMAL}\h ${RED}\$ ${NORMAL}"

# Bash completion
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

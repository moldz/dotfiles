# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# HISTORY
export HISTSIZE=10000
export HISTFILESIZE=20000
export HISTCONTROL=ignoreboth      # don't put duplicate lines or lines starting with space in the history
shopt -s histappend                # append to history instead of overwriting

# ENVIRONMENT
export PS1='\e[1;34m[\e[0;37m\u:\W\e[1;34m] \$ \e[m'
export PATH='/sbin:/usr/sbin:/usr/local/sbin:/bin:/usr/bin/:/usr/local/bin:~/bin:~/.local/bin'

# ALIASES
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

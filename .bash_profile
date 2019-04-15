export PS1="\[\033[36m\]~jonas  =>\[\033[0m\] "
source ~/.bashrc

export PATH="/usr/bin:$PATH"
export PATH="/usr/bin/python:$PATH"
export PATH="/Users/JonasHirshland/Library/Python/2.7/lib/python/site-packages:$PATH"
export PATH="/users/JonasHirshland/Library/Python/2.7/bin:$PATH"
export PATH=~/.npm-global/bin:$PATH
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls'
export CLICOLOR=1
function cd {
    builtin cd "$@" && ls -F
    }

alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias activate='source env/bin/activate'

alias eecs442='cd ~/Desktop/eecs442 ls'       
alias eecs485='cd ~/Desktop/eecs485 ls'
alias eecs201='cd ~/Desktop/eecs201 ls'       
alias qfind="find . -name "                 # qfind:    Quickly search for file

alias gl='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

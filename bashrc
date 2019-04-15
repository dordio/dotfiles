##############################
###### MY PERSONAL SHIT ######
##############################
# APPEND THIS FILE TO THE END OF YOUR .bashrc

shopt -s autocd

PS1='\[\e[91m\]\w\$\[\e[0m\] '

alias ls='ls -hN --color --group-directories-first'
alias dt='date "+%F %T"'
alias myip='curl whatismyip.level3.com'
alias top='htop'
alias ds='df -hT /'
alias grep='grep --color=auto'
alias v='vim'
alias sv='sudo vim'
alias a='sudo apt'

alias tdu="tmux resize-pane -U $1"
alias tdd="tmux resize-pane -D $1"
alias tdl="tmux resize-pane -L $1"
alias tdr="tmux resize-pane -R $1"
alias ta="tmux a -t $1"
alias tn="tmux new -s $1"
alias tk="tmux kill-session -t $1"
alias tl="tmux ls"

export PATH=/home/dordio/.scripts:$PATH

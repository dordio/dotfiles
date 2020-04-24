HISTSIZE=10000
HISTFILESIZE=20000

shopt -s autocd
shopt -s checkwinsize


PS1='\[\e[91m\]\w~>\[\e[0m\] '
#PS1="\n\[\e[0;34m\]┌─[\[\e[1;36m\u\e[0;34m\]]──[\e[1;37m\w\e[0;34m]──[\[\e[1;36m\]${HOSTNAME%%.*}\[\e[0;34m\]]\[\e[1;35m\]: \$\[\e[0;34m\]\n\[\e[0;34m\]└─╼ \[\e[1;35m\]>> \[\e[00;00m\]"

alias ls='ls -hN --color --group-directories-first'
alias la='ls -A'
alias l='ls -CF'
alias ll='ls -alF'
alias dt='date "+%F %T"'
alias myip='curl whatismyip.level3.com'
alias top='htop'
alias ds='df -hT /'
alias grep='grep --color=auto'
alias v='vim'
alias sv='sudo vim'
alias a='sudo apt'
alias mv='mv -i'
alias rm='rm -i'

alias tdu="tmux resize-pane -U $1"
alias tdd="tmux resize-pane -D $1"
alias tdl="tmux resize-pane -L $1"
alias tdr="tmux resize-pane -R $1"
alias ta="tmux a -t $1"
alias tn="tmux new -s $1"
alias tk="tmux kill-session -t $1"
alias tl="tmux ls"

export PATH=/home/pil/bin:$PATH
export EDITOR="vim"
# export TERM=xterm-256color
export HISTCONTROL=ignoreboth

cd

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

eval "$(dircolors -p | sed 's/ 4[0-9];/ 01;/; s/;4[0-9];/;01;/g; s/;4[0-9] /;01 /' | dircolors /dev/stdin)"

neofetch

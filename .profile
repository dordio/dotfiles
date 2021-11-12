if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

HISTSIZE=10000
HISTFILESIZE=20000

shopt -s autocd
shopt -s checkwinsize

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

alias ls='ls -hN --color --group-directories-first'
alias la='ls -A'
alias l='ls -CF'
alias ll='ls -gGahN'
alias dt='date "+%F %T"'
alias myip='myip.sh'
alias top='htop'
alias ds='df -hT /'
alias grep='grep --color=auto'
alias mv='mv -i'
alias rm='rm -i'
alias nano='nano -m -g -c -i -y'
alias fortune='fortune | cowsay'
alias speedtest='speedtest --simple'

alias tdu="tmux resize-pane -U $1"
alias tdd="tmux resize-pane -D $1"
alias tdl="tmux resize-pane -L $1"
alias tdr="tmux resize-pane -R $1"
alias ta="tmux a -t $1"
alias tn="tmux new -s $1"
alias tk="tmux kill-session -t $1"
alias tl="tmux ls"

export EDITOR="nano"
export HISTCONTROL=ignoreboth

eval "$(dircolors -p | sed 's/ 4[0-9];/ 01;/; s/;4[0-9];/;01;/g; s/;4[0-9] /;01 /' | dircolors /dev/stdin)"

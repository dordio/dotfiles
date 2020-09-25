if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

HISTSIZE=10000
HISTFILESIZE=20000

shopt -s autocd
shopt -s checkwinsize

EMOJIS=(🍕 🍔 🌭 🧀 🥓 🍓 🍌 💋 😊 💖 🎶 🤢 👍 🎁 😎 😈 💀 👽 💩 🎱 🎮 🍩)
SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};
PS1='\n🏡\[\e[91m\] : \[\e[35m\]\w\n${SELECTED_EMOJI} \[\e[32m\]>\[\e[0m\] '

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
alias nano='nano -m -g -c -i -y'

alias tdu="tmux resize-pane -U $1"
alias tdd="tmux resize-pane -D $1"
alias tdl="tmux resize-pane -L $1"
alias tdr="tmux resize-pane -R $1"
alias ta="tmux a -t $1"
alias tn="tmux new -s $1"
alias tk="tmux kill-session -t $1"
alias tl="tmux ls"

export EDITOR="vim"
export HISTCONTROL=ignoreboth

cd

eval "$(dircolors -p | sed 's/ 4[0-9];/ 01;/; s/;4[0-9];/;01;/g; s/;4[0-9] /;01 /' | dircolors /dev/stdin)"

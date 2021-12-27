cd /home/dordio
set PATH "$HOME/bin:$HOME/github:$HOME/.local/bin:$PATH"

set fish_greeting

alias cbonsai='~/github/cbonsai/cbonsai'
alias ls='ls -hN --color --group-directories-first'
alias la='ls -A'
alias l='ls -CF'
alias ll='ls -gGahN'
alias dt='date "+%F %T"'
alias myip='myip.sh'
alias ds='df -hT /'
alias grep='grep --color=auto'
alias mv='mv -i'
alias rm='rm -i'
alias nano='nano -m -g -c -i -y'
alias fortune='fortune | cowsay'
alias speedtest='speedtest --simple'
alias uptime='uptime -p | sed -e "s/up //g"'
alias weather='curl wttr.in/\?2Fn'
alias vivaldi='viv.sh'

alias tdu="tmux resize-pane -U $1"
alias tdd="tmux resize-pane -D $1"
alias tdl="tmux resize-pane -L $1"
alias tdr="tmux resize-pane -R $1"
alias ta="tmux a -t $1"
alias tn="tmux new -s $1"
alias tk="tmux kill-session -t $1"
alias tl="tmux ls"

function sudo --description "replacement for 'sudo !!'"
	if test "$argv" = !!
	eval command sudo $history[1]
else
	command sudo $argv
end
end

function hdd --description "shows home used space"
	df -h /home | grep /dev | awk '{print $3 "/" $5}'
end

function avail --description "shows home free space"
	df -h /home | grep /dev | awk '{print $4}'
end

fm6000 -r -c random

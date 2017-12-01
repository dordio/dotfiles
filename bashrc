##############################
###### MY PERSONAL SHIT ######
##############################
# APPEND THIS FILE TO THE END OF YOUR .bashrc

# muda a aparencia da prompt porque sim
#PS1='\[\e[91m\]\u@\h:\w\$\[\e[0m\] '
PS1='\[\e[91m\]\w\$\[\e[0m\] '

# mostra o dirs por linhas
alias dirs='dirs -v'

# mostra o ls com mais info porque eu gosto
alias ls='ls -lh --color'

# mostar a data e hora num formato diferente
alias dt='date "+%F %T"'

# mostra o ip publico do servidor
alias myip='curl whatismyip.level3.com'

# usa o htop em vez do top
alias top='htop'

# mostra espaco livre na root
alias ds='df -hT /'

# mostra a temperature do cpu
alias temp='vcgencmd measure_temp'

# configura o grep para mostrar resultados coloridos
alias grep='grep --color=auto'

# conjunto de funcoes para o tmux
function tdu {
	tmux resize-pane -U $1
}

function tdd {
	tmux resize-pane -D $1
}

function tdl {
	tmux resize-pane -L $1
}

function tdr {
	tmux resize-pane -R $1
}

function ta {
	tmux a -t $1
}

function tn {
	tmux new -s $1
}

function tk {
	tmux kill-session -t $1
}

function tl {
    tmux ls
}

export PATH=/home/pi/bin:$PATH

echo ""
neotech
echo ""

LS_COLORS='di=1;30'
export LS-COLORS

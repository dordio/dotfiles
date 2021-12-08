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


# name: sashimi (not mine)
# function fish_prompt
#   set -l last_status $status
#   set -l cyan (set_color -o cyan)
#   set -l yellow (set_color -o yellow)
#   set -g red (set_color -o red)
#   set -g blue (set_color -o blue)
#   set -l green (set_color -o green)
#   set -g normal (set_color normal)

#   set -l ahead (_git_ahead)
#   set -g whitespace ' '

#   if test $last_status = 0
#     set initial_indicator "$green◆"
#     set status_indicator "$normal❯$cyan❯$green❯"
#   else
#     set initial_indicator "$red✖ $last_status"
#     set status_indicator "$red❯$red❯$red❯"
#   end
#   set -l cwd $cyan(basename (prompt_pwd))

#   if [ (_git_branch_name) ]

#     if test (_git_branch_name) = 'master'
#       set -l git_branch (_git_branch_name)
#       set git_info "$normal git:($red$git_branch$normal)"
#     else
#       set -l git_branch (_git_branch_name)
#       set git_info "$normal git:($blue$git_branch$normal)"
#     end

#     if [ (_is_git_dirty) ]
#       set -l dirty "$yellow ✗"
#       set git_info "$git_info$dirty"
#     end
#   end

#   # Notify if a command took more than 5 minutes
#   if [ "$CMD_DURATION" -gt 300000 ]
#     echo The last command took (math "$CMD_DURATION/1000") seconds.
#   end

#   echo -n -s $initial_indicator $whitespace $cwd $git_info $whitespace $ahead $status_indicator $whitespace
# end

# function _git_ahead
#   set -l commits (command git rev-list --left-right '@{upstream}...HEAD' 2>/dev/null)
#   if [ $status != 0 ]
#     return
#   end
#   set -l behind (count (for arg in $commits; echo $arg; end | grep '^<'))
#   set -l ahead  (count (for arg in $commits; echo $arg; end | grep -v '^<'))
#   switch "$ahead $behind"
#     case ''     # no upstream
#     case '0 0'  # equal to upstream
#       return
#     case '* 0'  # ahead of upstream
#       echo "$blue↑$normal_c$ahead$whitespace"
#     case '0 *'  # behind upstream
#       echo "$red↓$normal_c$behind$whitespace"
#     case '*'    # diverged from upstream
#       echo "$blue↑$normal$ahead $red↓$normal_c$behind$whitespace"
#   end
# end

# function _git_branch_name
#   echo (command git symbolic-ref HEAD 2>/dev/null | sed -e 's|^refs/heads/||')
# end

# function _is_git_dirty
#   echo (command git status -s --ignore-submodules=dirty 2>/dev/null)
# end
#sashimi end

#export TERM=/usr/bin/alacritty
neofetch



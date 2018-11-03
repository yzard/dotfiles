export EDITOR="vi"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

alias l="ls"
alias k="kill -9"
alias c="cat"
alias g="grep"
alias s="ssh -Y"

alias ls="ls --color=always"
alias sl="ls"
alias ll="ls -al"
alias lg="cat /var/log/messages | tail -n 30"
alias gv="gvim"

alias gir="grep -ir"
alias lsg="ls | grep"
alias rst="reset"
alias clr="clear"
alias pgp="ps -ef | grep"

alias fngrp="find . | xargs -n 512 grep"

alias less="less -R"

alias rsync="rsync -avz --progress"

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/opt/miniconda/bin:$PATH"
export PATH="/home/zyin/dev/ivm/utils:$PATH"

export LD_LIBRARY_PATH='/usr/local/lib:/usr/lib'

export EDITOR="vim"
export HISTCONTROL=ignoredups

export TERM="xterm-256color"

case ${TERM} in
    xterm*|rxvt*|Eterm|aterm|kterm|gnome*|interix)
        export PROMPT_COMMAND='echo -ne "\033];${USER}@${HOSTNAME%%.*}\007"'
        ;;
    screen)
        export PROMPT_COMMAND='echo -ne "\033];${USER}@${HOSTNAME%%.*} (screen)\007"'
        ;;
esac

# Use VIm as man pager
export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
              vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
              -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
          -c 'set showtabline=0' \
          -c 'set nonumber' \
              -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""

export GIT_PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
              vim -R -c 'set ft=nomod nolist' \
          -c 'set syntax=diff' \
          -c 'set showtabline=0' \
          -c 'set nonumber' \
          -c 'map q :q<CR>' \
              -c 'map <SPACE> <C-D>' -c 'map b <C-U>' -\""

if [ -n "$STY" ];
then 
    export PS1="\e[33m\t \d\e[m : \e[31m\u\e[m@\e[36m\H\e[m (screen):\e[32m\w\e[m\n$ "
elif [ -n "$TMUX" ];
then 
    export PS1="\e[33m\t \d\e[m : \e[31m\u\e[m@\e[36m\H\e[m (tmux):\e[32m\w\e[m\n$ "
else
    export PS1="\e[33m\t \d\e[m : \e[31m\u\e[m@\e[36m\H\e[m:\e[32m\w\e[m\n$ "
fi
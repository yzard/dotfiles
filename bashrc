export EDITOR="vi"
export LANG="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

alias l="ls"
alias k="kill -9"
alias c="cat"
alias g="grep"
alias s="ssh -Y"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    alias ls="ls --color=always"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    alias ls="ls -G"
fi

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

alias rsync="rsync -avz --progress"

export LESS='-R'

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="/usr/sbin:$PATH"
export PATH="/home/zyin/dev/ivm/utils:$PATH"
export PATH="~/utilities:$PATH"
export PATH="~/.local/bin:$PATH"

export LD_LIBRARY_PATH='/usr/local/lib:/usr/lib'

export PYTHONPATH="~/dev/ivm"

export EDITOR="vim"

export HISTCONTROL=ignoredups
export HISTSIZE=10000
export HISTFILESIZE=20000

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
export GIT_PAGER="less"
export PAGER="less"

if [ -n "$STY" ];
then 
    export PS1="\e[33m\t \d\e[m : \e[31m\u\e[m@\e[36m\H\e[m (screen):\e[32m\w\e[m\n$ "
elif [ -n "$TMUX" ];
then 
    export PS1="\e[33m\t \d\e[m : \e[31m\u\e[m@\e[36m\H\e[m (tmux):\e[32m\w\e[m\n$ "
else
    export PS1="\e[33m\t \d\e[m : \e[31m\u\e[m@\e[36m\H\e[m:\e[32m\w\e[m\n$ "
fi


if [ -f /opt/miniconda3/etc/profile.d/conda.sh ]
then
    source /opt/miniconda3/etc/profile.d/conda.sh
    conda activate
fi

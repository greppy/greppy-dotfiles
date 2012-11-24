[[ ${-#*i} != ${-} ]] || return

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# move aliases to here, ongoing project
if [ -f ~/.aliases ];then
	. ~/.aliases
fi

# enable color support of ls and also add handy aliases
# eval `dircolors -b`
eval "$(dircolors ~/Dropbox/solarized/dircolors-solarized/dircolors.ansi-dark)"
#alias ls='ls --color=auto -CF'
#alias dir='ls --color=auto --format=vertical'
#alias vdir='ls --color=auto --format=long'

# GTD
# alias t='~/bin/todo.sh -d ~/.GTD/todo.cfg -t'

# what is the current todo list?
echo " -- TODO --"
~/bin/todo.sh -d ~/.GTD/todo.cfg ls
echo ""

# what is on the calendar for the next two weeks
# remind -w$(echo ${COLUMNS}) -c+2 ~/.GTD

# /usr/local/bin/google calendar list --cal '.*' --date $(date +%F),$(date +%F -d "2 weeks")

# alias gtd='t ls;/usr/local/bin/google calendar list --cal '.*' --date $(date +%F),$(date +%F -d "2 weeks")'
alias gtd='t ls;rem -m -w${COLUMNS} -c+2'

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'


# set a fancy prompt
PS1='\u@\h:\w\$ '

# export TERM=xterm-256color
# If this is an xterm set the title to user@host:dir
case $TERM in
screen|xterm*)
	PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
	;;
*)
	;;
esac

# pager and editor
export PAGER="less"
export EDITOR="vi"
export VISUAL="vi"

# vi keybindings
set -o vi

# columns and rows
shopt -s checkwinsize

# regexp failures
shopt -s failglob

# history file
export HISTSIZE=2000
export HISTCONTROL=ignoredups

np() {
if [ -f $* ]; then
	echo "ERROR: $* already exists"
else
	cp ~/.perl.template  $*
	$VISUAL $*
fi
}

export GPG_TTY=$(/usr/bin/tty)

# connect to gmail using mutt + imap
alias gmail='mutt -F ~/.mutt/gmailrc'

if [ -f ~/.bash_ps1 ]; then
    . ~/.bash_ps1
fi

export BLOG_DIR="~/blog"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

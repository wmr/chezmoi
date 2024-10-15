#
# minimalistic bash profile
#

. ~/.profile

if [ -f /opt/local/etc/bash_completion ]; then
	. /opt/local/etc/bash_completion
fi

# tmux support
[ -n "$TMUX" ] && export TERM=screen-256color

export PS1="\[\e[0;35m\]\h:\[\e[0m\]\W \[\e[1;30m\]\u$\[\e[0m\] "
export HISTCONTROL=ignoredups
. "$HOME/.cargo/env"

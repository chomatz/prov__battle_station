if [ -f $(which powerline-daemon) ]; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	. {{ cmd_bash_powerline.stdout }}
fi
alias grep='grep --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'

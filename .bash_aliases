if [[ $OSTYPE == 'darwin'* ]]; then
	alias l="ls -cl -hp --color=always"
else
	alias l="ls -cl -hp --time-style=long-iso --group-directories-first --color=always"
fi

alias download='cd ~/htdocs; rsync --delete -avzhe ssh trackmyleague.com@ssh.trackmyleague.com:/www/ .'
alias publish='cd ~/htdocs; rsync --delete -avzhe ssh . trackmyleague.com@ssh.trackmyleague.com:/www/'

alias v=nvim
alias t=tmux
alias pomo="~/pomo/pomo.sh"

alias ll="l -a"
alias fmp="cd ~/FMP"
alias havnegade="cd ~/Havnegade"
alias datavask="cd ~/Datavask"
alias dot="cd ~/dotfiles"
alias zk='cd ~/zetelkasten'
alias rwxrob='cd ~/rwxrob/dot'
alias mischa='cd ~/mischa/dotfiles'

alias tree='tree -I ".git|node_modules"'

alias cd1="cd .."
alias cd2="cd ../../"
alias cd3="cd ../../../"
alias cd4="cd ../../../../"
alias cd5="cd ../../../../../"

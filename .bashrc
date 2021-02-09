[[ -d ~/.rbenv ]] && \ 
	o
export PATH=${HOME}/.rbenv/bin:${PATH} && \ 
export LANG=ja_JP.UTF-8
eval "$(rbenv init -)"

# ls
alias ls='ls -F'
alias ll='ls -l'
alias la='ls -a'

# mkdir
alias mkdir='mkdir -p'

# git
alias g='git'
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gb='git branch'
alias gco='git checkout'
alias gf='git fetch'
alias gc='git commit'

# dotfile
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'

# vim
alias v='vim'

# cd
alias ..2='cd ../..'
alias ..3='cd ../../..'

PS1='[\u@\h] \W \t \$'

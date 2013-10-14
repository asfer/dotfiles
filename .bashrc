source ~/.gentoo-bashrc

# BASH
set -o vi
HISTSIZE=10000
HISTCONTROL=ignoreboth	# ignoredups + ignorespaces
bind "set completion-ignore-case on"

# Fortune
command fortune -a -s

# Vim
export EDITOR=vim
alias vi='vim'

# Terminal colors
export TERM='xterm-256color'

# Color man
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
		man "$@"
}

# Colored GCC
# alias gcc='colorgcc'
# export PATH="/usr/lib/colorgcc/bin:$PATH"

# CCache
# export PATH="/usr/lib/ccache/bin/:$PATH"
# export CCACHE_PATH="/usr/bin"

# Java
export JAVA_HOME=/opt/java
export PATH=$PATH:$JAVA_HOME/bin

# IntelliJ IDEA
export INTELLIJ_HOME=/opt/intellij-idea
export PATH=$PATH:$INTELLIJ_HOME/bin

# Maven
export M2_HOME=/opt/maven
export PATH=$PATH:$M2_HOME

# R
export R_HOME=/usr/lib/R
export PATH=$PATH:$R_HOME/bin

# Go
# export GOPATH=~/go

# Node
export PATH=$PATH:~/node_modules/.bin

# Scala
export PATH=$PATH:~/sbt/bin

# Ruby (rbenv)
export RBENV_HOME=~/.rbenv
export PATH=$RBENV_HOME/bin:$PATH
eval "$(rbenv init -)"


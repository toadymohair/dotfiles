# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
export PYENV_ROOT="/usr/local/bin/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin
eval "$(pyenv init -)"

# cat
alias c='pygmentize -O style=monokai -f terminal256 -g -O encoding=utf-8'
function cl() {
    c $1 | nl -n ln -b a
}
alias cl=cl

# less
export LESS='-R'
export LESSOPEN='|lessfilter %s'

# vi/vimからshellに戻っていることをプロンプトに表示
[[ -n "$VIMRUNTIME" ]] && \
    PS1='(VIM) \W \t $ '

# history に時刻表示
HISTTIMEFORMAT='%Y-%m-%d %T '

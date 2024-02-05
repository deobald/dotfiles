
# environment -------------------------------------------------

# scm
export EDITOR='vim'

# color the terminal
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# aliases -----------------------------------------------------

# general
alias la="ls -lach"
alias lsd="ls | grep ^d"

# git aliases
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias glg='git log --pretty=oneline'

# paths -------------------------------------------------------

export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"

export PATH="$HOME/.bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/python:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# functions ---------------------------------------------------

# set PS1 with git completions --------------------------------

GIT_PS1_SHOWDIRTYSTATE=true
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash;
  export PS1='\[\033[01;34m\]\w\[\033[00m\]\[\033[01;32m\]$(__git_ps1 " (%s)")\[\033[00m\] \n$ '
fi

# CLI and history ---------------------------------------------

# ydotool (custom build)
export YDOTOOL_SOCKET=/tmp/.ydotool_socket

# Atuin
[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"

# environments ------------------------------------------------

# rust
. "$HOME/.cargo/env"

# rbenv
eval "$(rbenv init -)"

# node
export NODE_PATH=/opt/node:/opt/node/lib/node_modules
export PATH=$PATH:/opt/node/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


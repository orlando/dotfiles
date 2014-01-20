# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# use vim bindings
bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/orlando/.zshrc'

# use utf-8 by default for the environment
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

autoload -Uz compinit
compinit
# End of lines added by compinstall

# custom stuff
PROMPT='👾 👾 👾  %n%~ '

case $TERM in
    xterm*)
        precmd () {print -Pn "\e]0;👾 👾 👾  %n%~ \a"}
        ;;
esac

ulimit -n 10000

bindkey '^R' history-incremental-search-backward
export SSL_CERT_FILE=/etc/pki/tls/cert.pem

# GIT
export GIT_MERGE_AUTOEDIT=no

# PYTHON
export VIRTUALENVWRAPPER_PYTHON=/opt/boxen/homebrew/bin/python

# BOXEN
export GITHUB_API_TOKEN=
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# ONDIR
chpwd() {
  eval "`ondir \"$OLDPWD\" \"$PWD\"`"
}

export PATH=$PATH:/usr/local/bin

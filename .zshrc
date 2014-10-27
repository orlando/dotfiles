# ADD bin and sbin to path
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

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

# GIT
export GIT_MERGE_AUTOEDIT=no

# PYTHON
export VIRTUALENVWRAPPER_PYTHON=/opt/boxen/homebrew/bin/python

# GITHUB API
export GITHUB_API_TOKEN=2698ba2f45cbf2e971c72ccaddab50275eac1712

# ONDIR
chpwd() {
  eval "`ondir \"$OLDPWD\" \"$PWD\"`"
}

# GAE
export GAE="/usr/local/google_appengine"
export PYTHONPATH="$PYTHONPATH:$GAE:$GAE/lib/django-1.5"
export PATH="$PATH:$GAE/lib/django-1.5/django/bin/"

# AUTOCOMPLETITION
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

# DOCKER
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/orlando/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

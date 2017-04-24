# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/jonathan.schweder@bludata.local/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git common-aliases dnf docker encode64 geeknote gitfast git-extras git-flow github history jsontools mercurial python  screen urltools vi-mode web-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
EDITOR='vim'
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Environment variables
export SRC_PATH=/run/media/jonathan.schweder/EE00D77900D746ED/Source
export PATH=$PATH:$SRC_PATH/docker:$SRC_PATH/Anaconda/bin:/home/jonathan.schweder@bludata.local/.cargo/bin


# NVim
export EDITOR=nvim
alias vim=nvim

# User specific aliases and functions
alias src="cd $SRC_PATH"
alias dk="docker"
alias dkc="docker-compose"

# Another source's files
source $SRC_PATH/bash-wakatime/bash-wakatime.sh

function dockerd_start()
{
    sudo sh -c "export PATH=$PATH:/home/jaschweder/Source/docker && dockerd --storage-driver btrfs"
}

####################################################################################
#                                PHP function's                                    #
####################################################################################
function start_php()
{
    docker run -d --name php -v $HOME/.ssh:/root/.ssh -v $('pwd'):/var/www jaschweder/php:tools tail -f /dev/stdout
}

function stop_php()
{
    docker rm -f php
}

function reload_php()
{
    stop_php && start_php
}

function php()
{
    docker exec php php "$@"
}

function iphp()
{
    docker exec php "$@"
}

function composer()
{
    docker exec php composer "$@"
}

function phpunit()
{
    docker exec php phpunit "$@"
}

####################################################################################
#                                Golang function's                                 #
####################################################################################
function start_go()
{
    docker run -d --name golang -v $('pwd'):/go golang:alpine tail -f /dev/stdout
}

function stop_go()
{
    docker rm -f golang
}

function reload_go()
{
    stop_go && start_go
}

function go()
{
    docker exec golang go "$@"
}

function igo()
{
    docker exec golang "$@"
}

####################################################################################
#                                Node function's                                   #
####################################################################################
function start_node()
{
    docker run -d --name node -v $('pwd'):/usr/src/node node tail -f /dev/stdout
}

function stop_node()
{
    docker rm -f node
}

function reload_node()
{
    stop_node && start_node
}

function node()
{
    docker exec node node "$@"
}

function inode()
{
    docker exec node "$@"
}

function npm()
{
    docker exec node npm "$@"
}

function gulp()
{
    docker exec node gulp "$@"
}

export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerline"
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd.mm.yyyy"
plugins=(git docker)

source $ZSH/oh-my-zsh.sh

export EDITOR=vim
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export SRC_PATH=<set>

alias vi=vim
alias dk="docker"
alias src="cd $SRC_PATH"

function hg_clone()
{
    mkdir -p $SRC_PATH/$1
    hg clone ssh://hg@bitbucket.org/$1 $SRC_PATH/$1
}

function git_clone()
{
    mkdir -p $SRC_PATH/$1
    git clone ssh://git@github.com/$1.git $SRC_PATH/$1
}

function reload_dkc()
{
    if [ -d "$('pwd')/docker" ]; then
        docker-compose -f ./docker/docker-compose.yml up -d --force-recreate --build --remove-orphans $1
    else
        docker-compose up -d --force-recreate --build --remove-orphans $1
    fi
}

function dkr()
{
    docker run -it --rm -v $('pwd'):/var/www -w /var/www $1 "${@:2}"
}

function dkc()
{
    if [ -d "$('pwd')/docker" ]; then
        docker-compose -f ./docker/docker-compose.yml "$@"
    else
        docker-compose "$@"
    fi
}

function psql()
{
    docker run -it --rm --privileged postgres:alpine psql
}

function mongo()
{
    docker run -it --rm mongo mongo "$@"
}

function rm_orig()
{
    find . -type f -name "*.orig" -exec rm -f {} \;
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

function composer()
{
    docker exec php composer "$@"
}

function phpunit()
{
    docker exec php ./vendor/bin/phpunit "$@"
}

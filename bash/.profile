# Uncomment the following line if you don't like systemctl's auto-paging feature:
export SYSTEMD_PAGER=

# User specific aliases and functions
export PS1="[\W] \\$ \[$(tput sgr0)\]"

# Environment variables
export SRC_PATH=/home/jaswdr/Source
export GOROOT_BOOTSTRAP=$SRC_PATH/jaswdr/go1.4
export GOPATH=$SRC_PATH/jaswdr/gopath
export PATH=$PATH:$SRC_PATH/jaswdr/go/bin:$SRC_PATH/jaswdr/gopath/bin:$SRC_PATH/jaswdr/node/bin:$SRC_PATH/jaswdr/firefox:$SRC_PATH/jaswdr/alacritty/target/release:$SRC_PATH/node/bin
export GITHUB_TOKEN=// your github token
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(vim {})+abort'"

export EDITOR=vim
alias vi=vim

# User specific aliases and functions
alias docker="sudo docker"
alias src="cd $SRC_PATH"
alias jas="cd $SRC_PATH/jaswdr"
alias dk="docker"
alias gosrc="cd $GOPATH/src/github.com/"
alias gd="go doc"
alias godoc="go doc"
alias grep="grep -rn --exclude-dir=vendor"
alias note="geeknote"
alias cat="bat --theme=Github"
alias ping="prettyping --nolegend"
alias fzf="fzf --preview 'bat --color \"never\" {}'"
alias top="htop"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules --exclude vendor"
alias fl="flameshot gui"

# Run new docker container with common binds
function dkr()
{
    docker run --rm -it \
        --privileged \
        -e=DISPLAY=$DISPLAY \
        -w=/app \
        -v="$PWD":/app \
        -v="/etc/shadow:/etc/shadow:ro" \
        -v="/etc/sudoers.d:/etc/sudoers.d:ro" \
        -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
        -v="/dev:/dev" \
        -v="$HOME/.ssh:/root/.ssh:ro" \
        "$@"
}

# HG clone
function hgc()
{
    hg clone ssh://hg@bitbucket.org/$1
}

# Git clone
function gitc()
{
    git clone ssh://git@github.com/$1.git
}

# Shot docker-compose alias checking if the yaml is in the current directory or in a sub directory named docker
# Usage: dkc up, dkc down, dkc ps...
function dkc()
{
    if [ -f "$('pwd')/docker/docker-compose.yml" ]; then
        docker-compose -f ./docker/docker-compose.yml "$@"
    else
        docker-compose "$@"
    fi
}

# Recreate all containers in docker-compose
# Usage: rdkc
function rdkc()
{
    if [ -f "$('pwd')/docker/docker-compose.yml" ]; then
        docker-compose -f ./docker/docker-compose.yml up -d --force-recreate --build --remove-orphans "$@"
    else
        docker-compose "$@" up -d --force-recreate --build --remove-orphans "$@"
    fi
}

# Print IP of container
# Usage: dip <container_id>
function dip()
{
    docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $1
}

# Open browser at the container address
# Usage: dip <container_id>
function dib()
{
    xdg-open $(dip $1)
}

# Open browser at the container address
# Usage: dob <container_id>
function dob() {
    xdg-open http://$(dkc exec $1 awk 'END{print $1}' /etc/hosts)
}

# Run bash inside new container
# Usage: dkb <image>
function dkb()
{
    dkr $1 bash
}

# Run new container serving current directory as a http server
# Usage: dkn
function dkn()
{
    dip $(docker run -d --name $1 -v $2:/usr/share/nginx/html nginx:alpine)
}

# Mongo client
# Usage: mongo <server_ip>
function mongo()
{
    docker run -it --rm mongo mongo "$@"
}

# Seastar build script (see: github.com/scylladb/seastar)
# Usage: seabuild
function seabuild() {
    docker run -it --privileged --rm -v $PWD:/seastar -u $(id -u):$(id -g) -w /seastar seastar-dev "$@";
}

# Replace all words ocurrencies by another
# Usage: replace OLD NEW
function replace() {
    sed -i -e "s/$1/$2/g" $(find . -type f)
}

# Edit all modified files
# Usage: ediff
function ediff() {
    vim -p `git status --porcelain | sed -ne 's/^ M //p'`
}

# Search and edit all files
# Usage: efind foo*.bar
function efind() {
    find . -name $1 -exec vim {} +
}

# Search content and edit all files
# Usage: eegrep func main()
function eegrep() {
    vim $(grep -rIl $1)
}

# Run new Jupyter notebook using current directory as workdir
# Usage: jupyter
jupyter() {
    docker run -v $PWD:/tmp/working -w=/tmp/working -p 8888:8888 --rm -it kaggle/python jupyter notebook --no-browser --allow-root --ip="0.0.0.0" --notebook-dir=/tmp/working
}

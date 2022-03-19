export AUTO_TITLE_SCREENS="NO"

export RPROMPT=

set-title() {
    echo -e "\e]0;$*\007"
}

# Vim
alias e=vim
alias vimf='vim $(fzf)'

# Git
alias gl='git log --pretty=oneline' 
alias gp='git pull origin'
alias gs='git status'
alias gd='git diff'

alias watchjs="/local/home/schwede/node-v16.13.0-linux-x64/bin/watch"

alias ssh="ssh -o StrictHostKeyChecking=no"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

source $HOME/.zsh-vi-mode/zsh-vi-mode.plugin.zsh
source $HOME/oss/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

plugins=(
    zsh-syntax-highlighting
    zsh-autosuggestions
)

eval "$(starship init zsh)"

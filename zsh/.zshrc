export AUTO_TITLE_SCREENS="NO"

export RPROMPT=

set-title() {
    echo -e "\e]0;$*\007"
}

# Vim
alias e=vim
alias vimf='vim $(fzf)'

# Utility to keep watching for changes and automatically run some command
# e.g.: watchjs "go build" .
alias watchjs="${HOME}/node-v16.13.0-linux-x64/bin/watch"

# Ignore SSH keys checks
alias ssh="ssh -o StrictHostKeyChecking=no"

# Mac/iterm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Load FZF configs
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

source $HOME/.zsh-vi-mode/zsh-vi-mode.plugin.zsh
source $HOME/oss/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

plugins=(
    zsh-syntax-highlighting
    zsh-autosuggestions
)

eval "$(starship init zsh)"

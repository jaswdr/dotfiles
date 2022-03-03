# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
source $HOME/.iterm2_shell_integration.zsh
source $HOME/.zsh-vi-mode/zsh-vi-mode.plugin.zsh
source $HOME/oss/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

plugins=(
    zsh-syntax-highlighting
    zsh-autosuggestions
)

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.bash ] && . ~/.config/tabtab/__tabtab.bash || true

alias ctags="`brew --prefix`/bin/ctags"

# Custom aliases
source ~/.kb_alias

export ZSH_DISABLE_COMPFIX="true"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true

eval "$(starship init zsh)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# get machine's ip address
alias ip="ipconfig getifaddr en0"
# reload zsh configuration
alias reloadzsh="source ~/.zshrc"
# open current directory in Finder
alias o="open ."
# open Cursor
alias c="cursor"

# use nvm
source /opt/homebrew/opt/nvm/nvm.sh

# use starship theme (needs to be at the end)
eval "$(starship init zsh)"

# Plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix nvm)/nvm.sh
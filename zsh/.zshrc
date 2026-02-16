# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Initialize Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

# get machine's ip address
alias ip="ipconfig getifaddr en0"
# reload zsh configuration
alias reloadzsh="source ~/.zshrc"
# open current directory in Finder
alias o="open ."
# open Cursor
alias c="code ."
# package manager auto-detection (pm)
pm() {
  local dir="$PWD"
  while [ "$dir" != "/" ]; do
    [ -f "$dir/pnpm-lock.yaml" ] && { pnpm "$@"; return; }
    [ -f "$dir/yarn.lock" ]      && { yarn "$@"; return; }
    [ -f "$dir/package-lock.json" ] && { npm "$@"; return; }
    [ -f "$dir/bun.lockb" ]      && { bun "$@"; return; }
    dir="$(dirname "$dir")"
  done

  echo "No lock file found — defaulting to npm"
  npm "$@"
}

# use nvm
source /opt/homebrew/opt/nvm/nvm.sh

# use starship theme (needs to be at the end)
eval "$(starship init zsh)"

# Plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix nvm)/nvm.sh
# pnpm
export PNPM_HOME="/Users/wirtzdan/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/kbhit/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

plugins=(
  git
  dotenv
  osx
  zsh-syntax-highlighting
  zsh-autosuggestions
  kubectl
  sdk
  rand-quote
  web-search
)

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh
source "$HOME/.sdkman/bin/sdkman-init.sh"

quote
alias k=kubectl
alias kc=kubectx
alias kn=kubens

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="${PATH}:${HOME}/.krew/bin"
export NAVI_PATH="/Users/kbhit/Sources/workspace-setup/navi/cheats"

alias l="exa --tree"
alias n="navi"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

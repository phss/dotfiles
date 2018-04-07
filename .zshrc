export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=~/.oh-my-zsh
ZSH_CONFIG_DIR=~/.zsh

ZSH_THEME="sorin"


plugins=(
    git
    autojump
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source $ZSH_CONFIG_DIR/autosuggestions.zsh

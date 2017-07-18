source ~/Documents/programming/scripts/git-prompt.sh
source ~/Documents/programming/scripts/git-completion.sh

#export DOCKER_HOST=tcp://192.168.59.103:2375

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias gvim="/Applications/MacVim.app/Contents/MacOS/Vim -g"
alias pserver="python -m SimpleHTTPServer"
alias t="todo.sh"
alias dbox="cd ~/Dropbox"
alias med="python /Users/pschneid/Documents/programming/github/habits/inserters/meditation/insert.py /Users/pschneid/Dropbox/notebook/habits/meditation.txt"
alias chromeopen="open -a 'Google Chrome'"
alias n="python /Users/pschneid/Documents/programming/github/notes-cli/notescli/core.py"
alias nv="n view"
alias na="n add --file"

BOLD="\[\033[0;33m\]"
GREEN="\[\033[0;36m\]"
OFF="\[\033[m\]"
GITHUB_BRANCH='$(__git_ps1 " (%s)")'
export PS1="${BOLD}\W${GREEN}${GITHUB_BRANCH}\$${OFF} "
#export PS1="${BOLD}\h:\W${GREEN}${GITHUB_BRANCH}\$${OFF} "

export GOPATH=$HOME/Documents/programming/go

export PATH=/usr/local/bin:$HOME/Library/Haskell/bin:$PATH:$HOME/Documents/programming/scripts:$GOPATH/bin:/Users/pschneid/Library/Android/sdk/platform-tools:/Users/pschneid/.cargo/bin

export RUST_SRC_PATH=/Users/pschneid/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Virtual ENV
export WORKON_HOME=~/.python/envs
mkdir -p $WORKON_HOME
source /usr/local/bin/virtualenvwrapper.sh

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Setup rbenv
eval "$(rbenv init -)"
eval "$(pyenv init -)"

#!/usr/bin/env bash

set -ex

# Install stuff through homebrew
brew install zsh ag autojump

# Install oh-my-zsh (https://ohmyz.sh/)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Configure zsh
mv ~/.zshrc ~/.zshrc.old
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.zsh ~/.zsh
ln -s $(pwd)/.zsh/phss.zsh-theme ~/.oh-my-zsh/themes/phss.zsh-theme



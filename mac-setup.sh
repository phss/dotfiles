#!/usr/bin/env bash

set -ex

# Install stuff through homebrew
brew install zsh ag autojump

# Install oh-my-zsh (https://ohmyz.sh/)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install vim-pathogen and plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
git clone git@github.com:kien/rainbow_parentheses.vim.git ~/.vim/bundle/rainbow_parentheses.vim

# Configure zsh
mv ~/.zshrc ~/.zshrc.old
ln -s $(pwd)/.zshrc ~/.zshrc
ln -s $(pwd)/.zsh ~/.zsh
ln -s $(pwd)/.zsh/phss.zsh-theme ~/.oh-my-zsh/themes/phss.zsh-theme

# Configure git
mv ~/.gitconfig ~/.gitconfig.old
ln -s $(pwd)/.gitconfig ~/.gitconfig

# Configure vim
mv ~/.vimrc ~/.vimrc.old
ln -s $(pwd)/.vimrc ~/.vimrc

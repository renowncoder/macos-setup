#!/usr/bin/env bash

###############################################################################
# My Zsh                                                                      #
###############################################################################

# set zsh as default shell
chsh -s $(which zsh)

# Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Auto-suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# syntax highlightings
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# completions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

# Install PowerLevel10k theme
git clone https://github.com/romkatv/powerlevel10k.git "$HOME/.oh-my-zsh/custom/themes/powerlevel10k"

# Make terminal faster
touch ~/.hushlogin

# copy dotfiles and zshrc
mkdir -p ~/.dotfiles
cp ./dotfiles/* ~/.dotfiles
cp -f .zshrc ~/

###############################################################################
# Vim                                                                         #
###############################################################################

# install VIM Plugins Manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copy my setup
cp -f .vimrc ~/

# Install plugins
vim +PluginInstall +qall

###############################################################################
# Terminal & iTerm 2                                                          #
###############################################################################

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Copy iterm Settings
sudo cp -f ./iterm/com.googlecode.iterm2.plist ~/Library/Preferences/

# Install Hivacruz theme for iTerm
open -a iTerm ./iterm/Hivacruz.itermcolors

# Misc rc files
cp -f .condarc ~/
cp -f .gemrc ~/
cp -f .screenrc ~/
cp -f .wgetrc ~/



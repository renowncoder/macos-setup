#!/usr/bin/env bash

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

## Install cask
brew install cask

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# languages
brew install python
brew install php

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install other useful binaries.
brew install git
brew install git-lfs
brew install git-flow
brew install git-extras
brew install imagemagick --with-webp
brew install pv
brew install rename
brew install ssh-copy-id
brew install tree
brew install pandoc
brew install jq
brew install ffmpeg
brew install ripgrep
brew install bat
brew install wget
brew install watch

# Core Casks
brew cask install flux
brew cask install spotify
brew cask install vlc
brew cask install the-unarchiver
brew cask install lulu
brew cask install onyx
brew cask install transmission

# Hackintosh stuff
brew cask install karabiner-elements

# Remove mouse acceleration
brew tap homebrew/cask-drivers
brew cask install steelseries-exactmouse-tool

# Development tool casks
brew cask install iterm2
brew cask install sublime-text
brew cask install virtualbox
brew cask install google-chrome
brew cask install miniconda
brew cask install visual-studio-code

# Correct PHP code
brew install php-cs-fixer
brew install phpcbf
brew install phpmd

# Fix Ruby Code
brew install rubocop

# Install Docker, which requires virtualbox
brew install docker
brew install docker-compose
brew install lazydocker

# Fonts
brew tap homebrew/cask-fonts
brew cask install font-roboto-mono
brew cask install font-roboto-mono-for-powerline

# Better quick look support
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzip
brew cask install webpquicklook
brew cask install suspicious-package
brew cask install suspicious-package
brew cask install webpquicklook
brew cask install quicklook-csv
brew cask install betterzip
brew cask install webpquicklook
brew cask install suspicious-package

# Remove outdated versions from the cellar.
brew cleanup
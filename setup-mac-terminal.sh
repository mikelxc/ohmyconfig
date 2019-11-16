#!/bin/sh
echo "---------------------------------------------------------"
echo "$(tput setaf 2)Greetings, you are about to installing Mike's mac command line environment.$(tput sgr 0)"
echo "Install Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
declare -a taps=(
  'buo/cask-upgrade'
  'caskroom/cask'
  'caskroom/versions'
  'homebrew/bundle'
  'homebrew/core'
)
for tap in "${taps[@]}"; do
  brew tap "$tap"
done
brew upgrade && brew update

echo "Brew install Packages"
declare -a packages=(
  'cask'
  'git'
  'mas'
  'neovim'
  'node'
  'vim'
#  'zsh-autosuggestions'
#  'zsh-completions'
#  'zsh-syntax-highlighting'
)
echo "Brew cask app installation"
declare -a cask_apps=(
  ‘adobe-creative-cloud’
  ‘bartender’
  'calibre'
  'firefox'
  'folx'
  'forklift'
  ‘google-chrome’
  'iina'
  'imazing'
  ‘iterm2’
  ‘skype’
  ‘sublime-text’
  ‘transmit’
  'visual-studio-code'
)

for app in "${cask_apps[@]}"; do
  brew cask install "$app"
done

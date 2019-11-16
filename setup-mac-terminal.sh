#!/bin/sh
echo "---------------------------------------------------------"
echo "$(tput setaf 2)Greetings, you are about to installing Mike's mac command line environment.$(tput sgr 0)"
echo "Install Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
declare -a taps=(
  'buo/cask-upgrade'
  'homebrew/cask-cask'
  'homebrew/cask-fonts'
  'homebrew/cask-versions'
  'homebrew/bundle'
  'homebrew/core'
for tap in "${taps[@]}"; do
  brew tap "$tap"
done
brew upgrade && brew update

echo "Brew install Packages"
declare -a packages=(
  'aria2'
  'autojump'
  'cask'
  'docker'
  'emacs'
  'ffmpeg'
  'git'
  'go'
  'mas'
  'mongodb'
  'mosh'
  'neovim'
  'node'
  'python3'
  'ruby'
  'tmux'
  'vim'
  'wine'
  'winetricks'
  'wget'
  'youtube-dl'
#  'zsh-autosuggestions'
#  'zsh-completions'
#  'zsh-syntax-highlighting'
)
for pkg in "${packages[@]}"; do
  brew install "$pkg"
done

echo "Brew cask app installation"
declare -a cask_apps=(
  'adobe-creative-cloud'
  'aerial'
  'anaconda'
  'bartender'
  'calibre'
  'cloudmounter'
  'daisydisk'
  'disk-drill'
  'downie'
  'firefox'
  'folx'
  'forklift'
  'font-hack-nerd-font'
  'google-chrome'
  'hammerspoon'
  'iina'
  'imazing'
  'iterm2'
  'jetbrains-toolbox'
  'jupyter-notebook-viewer'
  'karabiner-elements'
  'keycue'
  'kindle'
  'nordvpn'
  'minecraft'
  'notion'
  'skype'
  'sublime-text'
  'shadowsocksx-ng'
  'steam'
  'teamviewer'
  'transmit'
  'typora'
  'thunder'
  'v2rayx'
  'visual-studio-code'
  'wechat'
)

for app in "${cask_apps[@]}"; do
  brew cask install "$app"
done

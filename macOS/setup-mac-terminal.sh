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
)
for tap in "${taps[@]}"; do
  brew tap "$tap"
done
brew upgrade && brew update

echo "Brew install Packages"

declare -a packages=(
  'aria2'
  'autoconf'
  'automake'
  'autojump'
  'cask'
  'docker'
  'emacs'
  'ffmpeg'
  'git'
  'go'
  'gpg2'
  'mas'
  'mongodb'
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
)

#added seperately to have the lastest mosh with true color support, can be removed when the latest mosh updates
brew install --HEAD mosh

for pkg in "${packages[@]}"; do
  brew install "$pkg"
done

echo "Brew cask app installation"
declare -a cask_apps=(
  'adobe-creative-cloud'
  'aerial'
  'anaconda'
  'bartender'
  'bettertouchtool'
  'calibre'
  'cloudmounter'
  'daisydisk'
  'disk-drill'
  'downie'
  'firefox'
  'folx'
  'forklift'
  'font-firacode-nerd-font'
  'google-chrome'
  'hammerspoon'
  'iina'
  'imazing'
  'iterm2'
  'istat-menus'
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
  'tex-live-utility'
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
echo "Install iterm2 integration"
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash
echo "VSCode Extensions installation"

cat << EOF >> ~/.zshrc
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

declare -a vscode_ext=(
   "christian-kohler.path-intellisense"
   "CoenraadS.bracket-pair-colorizer-2"
   "dbaeumer.vscode-eslint"
   "ecmel.vscode-html-css"
   "Equinusocio.vsc-material-theme"
   "esbenp.prettier-vscode"
   "formulahendry.auto-rename-tag"
   "ginfuru.ginfuru-better-solarized-dark-theme"
   "humao.rest-client"
   "ms-azuretools.vscode-docker"
   "ms-python.anaconda-extension-pack"
   "ms-python.python"
   "oderwat.indent-rainbow"
   "PKief.material-icon-theme"
   "pranaygp.vscode-css-peek"
   "redhat.vscode-yaml"
   "TabNine.tabnine-vscode"
   "VisualStudioExptTeam.vscodeintellicode"
   "vscodevim.vim"
   "Shan.code-settings-sync"
   )
for ext in "${vscode_ext[@]}"; do
  code --install-extension "$ext"
done

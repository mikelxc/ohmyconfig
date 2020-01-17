#!/bin/sh
echo "---------------------------------------------------------"
echo "$(tput setaf 2)Greetings, you are about to installing Mike's zprezto Preparing to get ready and setup your zsh environment.$(tput sgr 0)"
if ! [ -x "$(command -v git)" ]; then
  echo 'Error: git is not installed.' >&2
  exit 1
fi

if ! [ -x "$(command zsh)" ]; then
  echo 'Error: zsh is not installed.' >&2
  exit 1
fi
cd ~
wget https://raw.githubusercontent.com/mikelxc/ohmyconfig/master/.zpreztorc
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto" && echo "fetched prezto" || echo "clone failed, please try again."

cd ~/.zprezto
git clone --recurse-submodules https://github.com/belak/prezto-contrib contrib && echo "downloaded submodules"

FILE= ~/.zshrc
if [ -f "$FILE" ]; then
    echo "you have existing zsh configurations"
    mv ~/.zshrc ~/.zshrc_old
    echo "Your old zsh configurations have been saved as ~/.zshrc_old"
fi

declare -a rcfile=(
  '~/.zprezto/runcoms/zlogin'
  '~/.zprezto/runcoms/zlogout'
  '~/.zprezto/runcoms/zprofile'
  '~/.zprezto/runcoms/zshenv'
  '~/.zprezto/runcoms/zshrc'
)

for rcfile in "${rcfile[@]}"; do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done


echo "---------------------------------------------------------"


zshlocation = $(which zsh)
chsh -s "$zshlocation"

git clone git://github.com/wting/autojump.git
cd autojump
./install.py 

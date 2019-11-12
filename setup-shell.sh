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

read -p "This will overwrite your current settings and use zsh with prezto to replace your current shell. Are you sure you want to continue? [y/N] " prompt
if [[ $prompt =~ [yY](es)* ]]
then
    cd ~
    wget https://raw.githubusercontent.com/mikelxc/ohmyconfig/master/.zpreztorc
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto" && echo "fetched prezto" || echo "clone failed, please try again."
    cd $ZPREZTODIR
    git clone --recurse-submodules https://github.com/belak/prezto-contrib contrib && "downloaded submodules"
fi
echo "---------------------------------------------------------"

FILE= ~/.zshrc
if [ -f "$FILE" ]; then
    echo "you have existing zsh configurations"
    read -p "Do you want to overwrite your current settings? [y/N] " prompt
    if [[ $prompt =~ [yY](es)* ]]
    then
        mv ~/.zshrc ~/.zshrc_old
        echo "Your old zsh configurations have been saved as ~/.zshrc_old"
    fi
fi

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

zshlocation = $(which zsh)
chsh -s "$zshlocation"

git clone git://github.com/wting/autojump.git
cd autojump
./install.py 

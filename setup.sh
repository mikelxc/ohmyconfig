#!/bin/sh
echo "---------------------------------------------------------"
echo "$(tput setaf 2)Greetings, you are about to installing Mike's zprezto Preparing to get ready and setup your zsh environment.$(tput sgr 0)"
echo "---------------------------------------------------------"

cd ~
wget https://raw.githubusercontent.com/mikelxc/ohmyzprezto/master/.zpreztorc
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
zsh
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

chsh -s /bin/zsh
cd $ZPREZTODIR
git clone --recurse-submodules https://github.com/belak/prezto-contrib contrib

git clone git://github.com/wting/autojump.git
cd autojump
./install.py 

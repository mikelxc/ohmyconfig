#!/bin/sh
echo "$(tput setaf 2)Greetings, you are about to installing Mike's neovim configuration. Preparing to get ready and setup your neovim environment.$(tput sgr 0)"
if ! [ -x "$(command -v git)" ]; then
  echo 'Error: git is not installed.' >&2
  exit 1
fi

if ! [ -x "$(command -v nvim)" ]; then
  echo 'Error: neovim is not installed.' >&2
  exit 1
fi
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
if [ -f "~/.config/nvim/init.vim" ]; then
    echo "you have existing neovim configurations"
    read -p "Do you want to overwrite your current settings? [y/N] " prompt
    if [[ $prompt =~ [yY] ]]
    then
        mv ~/.config/nvim/init.vim ~/.config/nvim/init_old.vim
        echo "Your old neovim configurations have been saved as ~/.config/nvim/init_old.vim"
    fi
else 
fi
mkdir ~/.config/nvim
cd ~/.config/nvim
curl https://raw.githubusercontent.com/mikelxc/ohmyconfig/master/init.vim
nvim -c call dein#install()
nvim -c CocInstall coc-tsserver coc-json coc-html coc-css coc-python coc-tabnine

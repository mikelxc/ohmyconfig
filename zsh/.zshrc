source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh-antidote/antidote.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
antidote load ${ZDOTDIR:-~/.config/zsh}/.zsh_plugins.txt

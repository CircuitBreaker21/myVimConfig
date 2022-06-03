
# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

eval $(dircolors -p | sed -e 's/DIR 01;34/DIR 01;36/' | dircolors /dev/stdin)


autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "





#cat ~/Documents/AMOS/banner.txt
echo -e '\033[32m ▄▄▄· • ▌ ▄ ·.       .▄▄ · 
▐█ ▀█ ·██ ▐███▪▪     ▐█ ▀. 
▄█▀▀█ ▐█ ▌▐▌▐█· ▄█▀▄ ▄▀▀▀█▄
▐█ ▪▐▌██ ██▌▐█▌▐█▌.▐▌▐█▄▪▐█
 ▀  ▀ ▀▀  █▪▀▀▀ ▀█▄▀▪ ▀▀▀▀ 
\033[m'  




# In .zshrc **needs to be last
# source "$HOME/zsh-vim-mode/zsh-vim-mode.plugin.zsh"










cat ~/Documents/AMOS/WelcomeMessage
date 


alias hiAMOS="cat ~/Documents/AMOS/banner.txt ; neofetch"
alias gnAMOS=" echo -e '\033[32m ▄▄ •  ▐ ▄     ▄▄▄▄· ▄▄▄ . ▄▄▄·  ▐ ▄ 
▐█ ▀ ▪•█▌▐█    ▐█ ▀█▪▀▄.▀·▐█ ▀█ •█▌▐█
▄█ ▀█▄▐█▐▐▌    ▐█▀▀█▄▐▀▀▪▄▄█▀▀█ ▐█▐▐▌
▐█▄▪▐███▐█▌    ██▄▪▐█▐█▄▄▌▐█ ▪▐▌██▐█▌
·▀▀▀▀ ▀▀ █▪    ·▀▀▀▀  ▀▀▀  ▀  ▀ ▀▀ █▪
\033[m' ; sudo shutdown 0"
#alias gnAMOS="echo 'gn Sabine :)'"

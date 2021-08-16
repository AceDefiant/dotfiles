# Options
setopt autocd extendedglob
unsetopt beep
bindkey -v

# Completion
autoload -Uz compinit
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)

# History
HISTFILE=~/.config/zsh/history
HISTSIZE=1000
SAVEHIST=1000

# Environment Variables
# PS1=" %B%F{5}%~ > %b%f"
LFS=/mnt/lfs
export BROWSER=/usr/bin/qutebrowser

# ~ Cleaning
export GNUPGHOME=$XDG_CONFIG_HOME/gnupg
export WGETRC=$XDG_CONFIG_HOME/wget/wgetrc
alias wget="wget --hsts-file=$XDG_CONFIG_HOME/wget/wget-hsts"
export LESSHISTFILE=$XDG_CONFIG_HOME/less/lesshst
export WINEPREFIX=$XDG_CONFIG_HOME/wine

# Aliases
alias ls="ls --color"
alias conf="cd ~/.config"
alias ytfzf="ytfzf -t"

# Starship Prompt
eval "$(starship init zsh)"

# Start in tmux
[[ $TERM = "alacritty" ]] && { eval "tmux -f ~/.config/tmux/tmux.conf" && exit 0; }

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

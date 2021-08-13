# Options
setopt autocd extendedglob
unsetopt beep
bindkey -v

# Completion
autoload -Uz compinit
compinit
_comp_options+=(globdots)

# History
HISTFILE=~/.config/zsh/history
HISTSIZE=1000
SAVEHIST=1000

# Environment Variables
# PS1=" %B%F{5}%~ > %b%f"
PATH=~/.scripts:$PATH

# Aliases
alias ls="ls --color"
alias c="cd ~/Documents/c_code/workspace"
alias conf="cd ~/.config"

# Starship Prompt
eval "$(starship init zsh)"

# Start in tmux
[[ $TERM = "alacritty" ]] && { eval "tmux -f ~/.config/tmux/tmux.conf" && exit 0; }

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

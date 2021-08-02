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
PS1=" %B%F{5}%~ > %b%f"

# Aliases
alias ls="ls --color"



# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

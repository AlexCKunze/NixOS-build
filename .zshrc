# Prompt
PS1=" %F{blue}✤SαɾƈαʂƚιƈDɾҽαɱ✤ %F{#828482}%~ "$'\n  %F{white1}↪ '"%F{reset}"

PATH=$PATH:/home/sarcasticdream/Documents/projects/shellScripts/

NVIMPATH=$(whereis nvim | cut -d " " -f2)
export EDITOR=$NVIMPATH

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Tmux auto exec
if [ -z "$TMUX" ] && [ "$(echo $DISPLAY)" != "linux" ];
then
    tmux attach
    if [ -z "$TMUX" ];
    then
        exit
    fi
fi

# Aliases
source ~/.bash_aliases

# Plugins are being sourced via /etc/nixos/configuration.nix, currently being used are (zsh-syntax-highlighting)

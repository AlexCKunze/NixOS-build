# Prompt
PS1=" %F{cyan}✤SαɾƈαʂƚιƈDɾҽαɱ✤ %F{#828482}%~ "$'\n  %F{white1}↪ '"%F{reset}"

PATH=$PATH:/home/sarcasticdream/Documents/projects/shellScripts/:/home/sarcasticdream/Documents/projects/bash-site-gen

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


# Aliases
source ~/.sh_aliases

# Plugins are being sourced via /etc/nixos/configuration.nix, currently being used are (zsh-syntax-highlighting)


# Random Aliases
alias vim='nvim'
alias vi='nvim'
alias temps='watch -n 2 sensors'
alias password_generator='python ~/Documents/projects/python_stuff/passgen.py'
alias cfb='nvim ~/.bashrc'
alias cfz='nvim ~/.zshrc'
alias cfba='nvim ~/.bash_aliases'
alias cfc='sudo nvim /etc/nixos/configuration.nix'
alias cfi3='nvim ~/.config/i3/config'
alias cft='nvim ~/.tmux.conf'
# alias setrd='xrandr --output DisplayPort-1 --mode 1920x1080 --rate 165.00 --output HDMI-1 --mode 1920x1080 --rate 60.00'
# alias setr='xrandr --output DisplayPort-1 --mode 1920x1080 --rate 165.00'
alias dvideo='yt-dlp -f bestvideo+bestaudio'
alias daudio='yt-dlp -f bestaudio'
alias dm4aaudio="yt-dlp -f 'bestaudio[ext=m4a]'"
alias dm4aplaylistaudio='yt-dlp -f bestaudio[ext=m4a] --yes-playlist'
alias dsoundeffect='yt-dlp --extract-audio --audio-format mp3'
alias cfv='nvim ~/.config/nvim/init.vim'
alias cfvp='nvim ~/.config/nvim/vim-plug/plugins.vim'
alias p='python'
alias clear-tmp-screenshots='cd /tmp && rm *.png'
alias :q='exit'
alias q='exit'
alias sb='source ~/.bashrc'

# Nixos Aliases
alias set-default-boot='/run/current-system/bin/switch-to-configuration boot'
alias full-system-clean='nix-collect-garbage -d && sudo nix-collect-garbage -d'
alias full-system-upgrade="sudo nixos-rebuild switch --upgrade && flatpak update -y && nix-env -u '*'"
alias list-system-configurations='ls -l /nix/var/nix/profiles/system-*-link'
alias system-rebuild='sudo nixos-rebuild switch'
alias system-repair='sudo nixos-rebuild switch --repair'
alias full-system-repair='nix-store --verify --check-contents --repair'
alias system-upgrade-information='sudo nixos-rebuild switch --upgrade dry-build'
alias local-upgrade="nix-channel --update nixpkgs && nix-env -u '*'"

# less random aliases
alias fontreload='fc-cache -fv'
alias cfpd='cd ~/.local/lib/python3.9/site-packages'
alias syncthing='syncthing && disown & exit'
alias runminetest='minetestserver --config ~/.minetest/minetest.conf'

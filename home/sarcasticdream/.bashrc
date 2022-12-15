
PS1='\[\e[0;34m\] ✤SαɾƈαʂƚιƈDɾҽαɱ✤\[\e[2;37m\] \w \[\e[0;37m\]\n  ↪\[\e[0;37m\] '

if [ $(date | cut -d " " -f1) == "Wed" ]; then cat ~/Downloads/Bullshit/TisWednesdayMyDudes; fi

source ~/.bash_aliases

if [ "$(tty)" == "/dev/tty1" ];
then
    startx
fi
if [ -z "$TMUX" ] && [ "$(echo $DISPLAY)" != "linux" ];
then
    tmux attach
    if [ -z "$TMUX" ];
    then
        exit
    fi
fi

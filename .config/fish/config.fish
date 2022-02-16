if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Lol
set fish_greeting

# name: sashimi
function fish_prompt
  set -l last_status $status
  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -g red (set_color -o red)
  set -g blue (set_color -o blue)
  set -l green (set_color -o green)
  set -g normal (set_color normal)

  set -l ahead (_git_ahead)
  set -g whitespace ' '

  if test $last_status = 0
    set initial_indicator "$blue ✤SαɾƈαʂƚιƈDɾҽαɱ✤"
    set status_indicator "$normal❯$cyan❯$green❯"
  else
    set initial_indicator "$red✖ $last_status"
    set status_indicator "$red❯$red❯$red❯"
  end
  set -l cwd $cyan(basename (prompt_pwd))

  if [ (_git_branch_name) ]

    if test (_git_branch_name) = 'master'
      set -l git_branch (_git_branch_name)
      set git_info "$normal git:($red$git_branch$normal)"
    else
      set -l git_branch (_git_branch_name)
      set git_info "$normal git:($blue$git_branch$normal)"
    end

    if [ (_is_git_dirty) ]
      set -l dirty "$yellow ✗"
      set git_info "$git_info$dirty"
    end
  end

  # Notify if a command took more than 5 minutes
  if [ "$CMD_DURATION" -gt 300000 ]
    echo The last command took (math "$CMD_DURATION/1000") seconds.
  end

  echo -n -s $initial_indicator $whitespace $cwd $git_info $whitespace $ahead $status_indicator $whitespace
end

function _git_ahead
  set -l commits (command git rev-list --left-right '@{upstream}...HEAD' 2>/dev/null)
  if [ $status != 0 ]
    return
  end
  set -l behind (count (for arg in $commits; echo $arg; end | grep '^<'))
  set -l ahead  (count (for arg in $commits; echo $arg; end | grep -v '^<'))
  switch "$ahead $behind"
    case ''     # no upstream
    case '0 0'  # equal to upstream
      return
    case '* 0'  # ahead of upstream
      echo "$blue↑$normal_c$ahead$whitespace"
    case '0 *'  # behind upstream
      echo "$red↓$normal_c$behind$whitespace"
    case '*'    # diverged from upstream
      echo "$blue↑$normal$ahead $red↓$normal_c$behind$whitespace"
  end
end

function _git_branch_name
  echo (command git symbolic-ref HEAD 2>/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty 2>/dev/null)
end


#Aliases from bashrc
#Random Aliases
alias vim='nvim'
alias vi='nvim'
alias temps='watch -n 2 sensors'
alias password_generator='python ~/Documents/projects/python_stuff/passgen.py'
alias cfb='nvim ~/.bashrc'
alias cff='nvim ~/.config/fish/config.fish'
alias cfc='sudo nvim /etc/nixos/configuration.nix'
alias cfi3='nvim ~/.config/i3/config'
alias cft='nvim ~/.tmux.conf'
alias setrd='xrandr --output DisplayPort-1 --mode 1920x1080 --rate 165.00 --output HDMI-1 --mode 1920x1080 --rate 60.00'
alias setr='xrandr --output DisplayPort-1 --mode 1920x1080 --rate 165.00'
alias dvideo='youtube-dl -f bestvideo+bestaudio'
alias daudio='youtube-dl -f bestaudio'
alias dm4aaudio="youtube-dl -f 'bestaudio[ext=m4a]'"
alias dm4aplaylistaudio='youtube-dl -f bestaudio[ext=m4a] --yes-playlist'
alias dsoundeffect='youtube-dl --extract-audio --audio-format mp3'
alias cfv='nvim ~/.config/nvim/init.vim'
alias cfvp='nvim ~/.config/nvim/vim-plug/plugins.vim'
alias p='python'
alias clear-tmp-screenshots='cd /tmp && rm *.png'
alias cflinks='mousepad ~/Documents/sus/flat-earth/Muahwahahha/links & disown && exit'
alias cfp='cd ~/Documents/projects/python_stuff/'
alias cfm='cd ~/Documents/paper-server && clear'
alias sb='source ~/.bashrc'
alias sf='source ~/.config/fish/config.fish'
alias gigachad='mousepad ~/Documents/projects/scripkiddies/gigachad.txt && disown & exit'
#Nixos Aliases
alias set-default-boot='/run/current-system/bin/switch-to-configuration boot'
alias full-system-clean='nix-collect-garbage -d && sudo nix-collect-garbage -d'
alias full-system-upgrade="sudo nixos-rebuild switch --upgrade && flatpak update -y && nix-env -u '*'"
alias list-system-configurations='ls -l /nix/var/nix/profiles/system-*-link'
alias system-rebuild='sudo nixos-rebuild switch'
alias system-repair='sudo nixos-rebuild switch --repair'
alias full-system-repair='nix-store --verify --check-contents --repair'
alias system-upgrade-information='sudo nixos-rebuild switch --upgrade dry-build'
#less random aliases
alias fontreload='fc-cache -fv'
alias cfpd='cd ~/.local/lib/python3.9/site-packages'
#alias steam='cd ~/.local/share/Steam/ && rm -f bootstrap.tar.xz && cd && steam'
alias sapollo='ssh apollo@192.168.0.4 -p 43607'
#Nix
alias local-upgrade="nix-channel --update nixpkgs && nix-env -u '*'"
#School
alias cdpython='cd /home/sarcasticdream/Documents/schoolwork/MadisonTechnicalCollege/SecondSemester/PythonScripting/'
alias cdpythongit='cd ~/Documents/schoolwork/MadisonTechnicalCollege/SecondSemester/PythonScripting/weekly-assignments-akunze4-matc'
alias cdlinux='cd ~/Documents/schoolwork/MadisonTechnicalCollege/SecondSemester/LinuxServer2/'
alias referenceOFCheese='nvim ~/Documents/schoolwork/MadisonTechnicalCollege/SecondSemester/FirewallVPNTechnologies/TheUltimateReferenceofCheese.txt'

#
# ~/.bashrc
#

# # # # # # # # # # # # # # # # # # # # # # # #
# # SHELL
# # # # # # # # # # # # # # # # # # # # # # # #

[[ $- != *i* ]] && return 0 # If not running interactively, dobt't do anything

_islinux=false
[[ "$(uname -s)" =~ Linux|GNU|GNU/* ]] && _islinux=true

_isarch=false
[[ -f /etc/arch-release ]] && _isarch=true

_isxrunning=false
[[ -n "$DISPLAY" ]] && _isxrunning=true

_isroot=false
[[ $UID -eq 0 ]] && _isroot=true

# PS1 CONFIG {{{
  export TERM='xterm-256color'

  if $_isxrunning; then
    [[ -f $HOME/.dircolors_256 ]] && eval $(dircolors -b $HOME/.dircolors_256)

     B='\[\e[1;38;5;33m\]'
    LB='\[\e[1;38;5;81m\]'
    GY='\[\e[1;38;5;242m\]'
     G='\[\e[1;38;5;82m\]'
     P='\[\e[1;38;5;161m\]'
    PP='\[\e[1;38;5;93m\]'
     R='\[\e[1;38;5;196m\]'
     Y='\[\e[1;38;5;214m\]'
     W='\[\e[0m\]'

    get_prompt_symbol() {
      [[ $UID == 0 ]] && echo "#" || echo "\$"
    }

    if [[ $PS1 && -f /usr/share/git/git-prompt.sh ]]; then
      source /usr/share/git/completion/git-completion.bash
      source /usr/share/git/git-prompt.sh

      export GIT_PS1_SHOWDIRTYSTATE=1
      export GIT_PS1_SHOWSTASHSTATE=1
      export GIT_PS1_SHOWUNTRACKEDFILES=0

      export PS1="$GY[$Y\u$GY@$P\h$GY:$B\W\$(__git_ps1 \"$GY|$LB%s\")$GY]$W\$(get_prompt_symbol) "
    else
      export PS1="$GY[$Y\u$GY@$P\h$GY:$B\W$GY]$W\$(get_prompt_symbol) "
    fi
  else
    [[ -f $HOME/.dircolors ]] && eval $(dircolors -b $HOME/.dircolors)
  fi
#}}}

# # # # # # # # # # # # # # # # # # # # # # # #
# # BASH
# # # # # # # # # # # # # # # # # # # # # # # #

# BASH HISTORY {{{
	export HISTSIZE=1000 # bash history will save N commands
	export HISTFILESIZE=${HISTSIZE} # bash will remember N commands
	export HISTCONTROL=ignoreboth:erasedups # ingore duplicates and spaces
	export HISTIGNORE='&:ls:ll:la:cd:exit:clear:history'
#}}}
# BASH OPTIONS {{{
	shopt -s cdspell                 # Correct cd typos
	shopt -s checkwinsize            # Update windows size on command
	shopt -s histappend              # Append History instead of overwriting file
	shopt -s cmdhist                 # Bash attempts to save all lines of a multiple-line command in the same history entry
	shopt -s extglob                 # Extended pattern
	shopt -s no_empty_cmd_completion # No empty completion
	shopt -s expand_aliases
	# COMPLETION {{{
		complete -cf sudo
		if [[ -f /etc/bash_completion ]]; then
		  . /etc/bash_completion
		fi
  #}}}
#}}}

# # # # # # # # # # # # # # # # # # # # # # # #
# # COMMANDS
# # # # # # # # # # # # # # # # # # # # # # # #
# SHORTCUTS {{{
	alias q='exit 0'
	alias c='clear'
	alias x='chmod +x'
#}}}

# LS {{{
	alias l='ls'			
	alias ls='ls -hF --color=auto'
	alias la='ls -Ah'
	alias ll='ls -lAh'
	alias lr='ls -R'
	alias lm='la | less'
	alias l.="ls -A | egrep '^\.'"
#}}}

# ENTER AND LIST DIRECTORY{{{
#    function cd() { builtin cd -- "$@" && { [ "$PS1" = "" ] || ls -hrt --color; }; }
#}}}

# MODIFIED COMMANDS {{{
    alias ..='cd ..'
	alias cp="cp -i"
    alias diff='colordiff' # requires colordiff package
	alias du='df -kh' # readable output
	alias df='df -kTh'
    alias free='free -mt' # show sizes in MB
    alias grep='grep --color=auto'
    alias grep='grep --color=tty -d skip'
    alias mkdir='mkdir -p -v'
    alias more='less'
    alias nano='nano -w'
    alias ping='ping -c 5'
	alias wget="wget -c" # continue download
#}}}

# AUTOCOLOR {{{
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
#}}}

# userlist
alias userlist="cut -d: -f1 /etc/passwd"

# merge new settings
alias xmerge="xrdb -merge ~/.Xresources"
alias rebash="source ~/.bashrc"
alias reprofile="source ~/.profile"

# ps
alias ps="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

# grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# improve png
alias fixpng="find . -type f -name "*.png" -exec convert {} -strip {} \;"

# add new fonts to cache
alias fc='sudo fc-cache -fv'

alias debug='set -o nounset; set -o xtrace'

# # # # # # # # # # # # # # # # # # # # # # # #
# # PACKAGE MANAGER
# # # # # # # # # # # # # # # # # # # # # # # #

# Get fastest mirrors in your neighborhood {{{
	alias mirror="sudo reflector --protocol https --latest 50 --number 20 --sort rate --save /etc/pacman.d/mirrorlist"
	alias mirrors=mirror
# }}}

# PACMAN ALIASES {{{
    # we're on ARCH
    if $_isarch; then
      # we're not root
      if ! $_isroot; then
        alias pacman='sudo pacman'
      fi
      alias pacupg='sudo pacman -Syu'            # Synchronize with repositories and then upgrade packages that are out of date on the local system.
      alias pacupd='sudo pacman -Sy'             # Refresh of all package lists after updating /etc/pacman.d/mirrorlist
      alias pacin='sudo pacman -S'               # Install specific package(s) from the repositories
      alias pacinu='sudo pacman -U'              # Install specific local package(s)
      alias pacre='sudo pacman -R'               # Remove the specified package(s), retaining its configuration(s) and required dependencies
      alias pacun='sudo pacman -Rcsn'            # Remove the specified package(s), its configuration(s) and unneeded dependencies
      alias pacinfo='sudo pacman -Si'            # Display information about a given package in the repositories
      alias pacse='sudo pacman -Ss'              # Search for package(s) in the repositories

      alias pacupa='sudo pacman -Sy && sudo abs' # Update and refresh the local package and ABS databases against repositories
      alias pacind='sudo pacman -S --asdeps'     # Install given package(s) as dependencies of another package
      alias pacclean="sudo pacman -Sc"           # Delete all not currently installed package files
      alias pacmake="sudo makepkg -fcsi"         # Make package from PKGBUILD file in current directory
	  alias pacunlock='sudo rm /var/lib/pacman/db.lck' # unable to lock database
    fi
#}}}

# TRIZEN ALIASES {{{
	alias trizen="trizen --color=auto" # trizen
	alias tup="trizen -Syu --color=auto" # update
	alias tin="trizen -S --color=auto" # install
	alias tun="trizen -Rs --color=auto" # remove
	alias tcc="trizen -Scc --color=auto" # clear cache
#}}}

# # # # # # # # # # # # # # # # # # # # # # # #
# # OTHER SCRIPTS
# # # # # # # # # # # # # # # # # # # # # # # #

# YouTube-dl, download scripts{{{
	alias ytdl-mp3-best="youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0"
	alias ytdl-m4a-best="youtube-dl -f 'bestaudio[ext=m4a]/best[ext=m4a]/best'"
	alias ytdl-mp4-480="youtube-dl -f 'bestvideo[height<=480]+bestaudio/best[height<=480]'"
	alias ytdl-mp4-720="youtube-dl -f 'bestvideo[height<=720]+bestaudio/best[height<=720]'"
	alias ytdl-mp4-1080="youtube-dl -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]'"
	alias ytdl-mp4-best="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'"
#}}}

# MATRIX SCREEN {{{
  alias nmatrix='echo -e "\e[32m"; while :; do for i in {1..16}; do r="$(($RANDOM % 2))"; if [[ $(($RANDOM % 5)) == 1 ]]; then if [[ $(($RANDOM % 4)) == 1 ]]; then v+="\e[1m $r   "; else v+="\e[2m $r   "; fi; else v+="     "; fi; done; echo -e "$v"; v=""; done'
#}}}

# SET FREE MEMEORY {{{
  alias freemem='sudo /sbin/sysctl -w vm.drop_caches=3'
#}}}

# nvidia optimus -> prime select {{{
  alias nvidia="sudo prime-select nvidia"
  alias intel="sudo prime-select intel"
  # cpu governor
  alias gameoff="sudo cpufreq-set -g powersave"
  alias gameon="sudo cpufreq-set -g performance"
#}}}

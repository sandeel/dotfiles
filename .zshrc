# Set up the prompt

autoload -Uz promptinit
promptinit
prompt clint

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

set -o vi

unset GNOME_KEYRING_PID  
unset GNOME_KEYRING_CONTROL

alias ishimura="ssh daniel@192.168.1.18"
alias netbook="ssh daniel@192.168.1.35"
alias desktop="ssh daniel@192.168.1.15"

# navigation
alias gp="cd college/3rdYear/GP/"
alias ck="cd ~/code/CardKingdoms.git/"
alias tp="cd ~/college/3rdYear/TP"
alias cloud="cd ~/Dropbox/college/4thYear/1stSemester/CloudComputing/"

# Vimwiki
alias vw="vim -c VimwikiIndex"
alias diary="vim -c 'exec Diary()'"

alias tg="cd ~/src/tg && bin/telegram-cli"

COLORFGBG="default;default"

export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=~/.virtualenvs

bindkey "^R" history-incremental-search-backward

bindkey '^p' up-line-or-search
bindkey '^n' down-line-or-search

alias update="sudo apt-get update && sudo apt-get dist-upgrade -y"
alias taiga="cd ~/src/taiga-vagrant && vagrant up && workon taiga-ncurses && taiga-ncurses"

# hide gtk-related error
export NO_AT_BRIDGE=1

# git
alias add="git add"
alias status="git status"
alias checkout="git checkout"
alias push="git push"
alias pull="git pull"
alias commit="git commit"

# torrent
alias deluge='deluged && deluge-console'

# mutt
alias mutt='cd && mutt'

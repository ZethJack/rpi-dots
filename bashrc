# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# History control
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

# Shell options
shopt -s histappend
shopt -s checkwinsize

# Aliases
alias yt='yt-dlp --add-metadata -i --external-downloader aria2c:"-c -j 3 -x 3 -k 1M" --sponsorblock-remove sponsor,selfpromo,interaction -o "%(title)s.%(ext)s"'
alias yta='yt -x -f bestaudio/best --audio-format opus'
alias yta-ogg='yt -x -f bestaudio/best --audio-format ogg'
alias tat='tmux a || tmux'
alias nhhs='nh home switch'
alias mkd='mkdir -pv'
# alias cdd='cd $FLAKE'
# alias cdf='cdd ; hx $FLAKE'
alias cdb='cdd ; nhhs'
alias lg='lazygit'

# Environment variables
export PATH="$HOME/.local/bin:$PATH"
export EDITOR="hx"
export SUDO_EDITOR="hx"
export SDL_GAMECONTROLLERCONFIG="0300de1f436c6f636b776f726b207500,Clockwork uConsole Keyboard,platform:Linux,a:b0,b:b1,x:b2,y:b3,back:b4,start:b5,leftx:a0,lefty:a1,"

# Enable fzf if installed
if command -v fzf >/dev/null 2>&1; then
    source /usr/share/fzf/key-bindings.bash
    source /usr/share/fzf/completion.bash
fi

# Enable oh-my-posh if installed
if command -v oh-my-posh >/dev/null 2>&1; then
    eval "$(oh-my-posh init bash --config ~/.poshthemes/catppuccin_mocha.omp.json)"
fi 

#!/bin/zsh

export PATH="$PATH:$HOME/.local/share/npm/bin"
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

# Default programs:
export EDITOR="nvim"
export TERMINAL="alacritty"
export TERMINAL_PROG="alacritty"
export BROWSER="firefox"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DOCUMENTS_DIR="$HOME/docs"
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_MUSIC_DIR="$HOME/music"
export XDG_PICTURES_DIR="$HOME/pics"
export XDG_VIDEOS_DIR="$HOME/videos"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority 

export GNUPGHOME="$XDG_DATA_HOME"/gnupg

export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export PYTHONPYCACHEPREFIX=$XDG_CACHE_HOME/python
export PYTHONUSERBASE=$XDG_DATA_HOME/python
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history 
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export LEIN_HOME="$XDG_DATA_HOME"/lein
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv 
export TEXMFHOME=$XDG_DATA_HOME/texmf
export TEXMFVAR=$XDG_CACHE_HOME/texlive/texmf-var
export TEXMFCONFIG=$XDG_CONFIG_HOME/texlive/texmf-config 


[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"

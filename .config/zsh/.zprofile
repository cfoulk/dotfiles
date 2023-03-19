#!/bin/zsh

export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export TERMINAL_PROG="st"
export BROWSER="firefox"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority 

export GNUPGHOME="$XDG_DATA_HOME"/gnupg

export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc

[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx "$XINITRC"

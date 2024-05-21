setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
HISTFILE=$XDG_CACHE_HOME/zsh/history
HISTSIZE=10000
SAVEHIST=10000
setopt prompt_subst
autoload -Uz vcs_info # enable vcs_info
zstyle ':vcs_info:*' formats '(%F{red}%b%f) ' # git(main)
precmd () { 
    vcs_info 
} # always load before displaying the prompt

PROMPT='%F{magenta}%B%~%b%f'$'\n''%B${vcs_info_msg_0_}>>>%b ' # david@macbook /tmp/repo (main) $
setopt autocd extendedglob
export VI_MODE_SET_CURSOR=true
unsetopt beep
bindkey '^H' backward-kill-word
bindkey '5~' kill-word
# Use vim keys in tab complete menu:
#bindkey -M menuselect 'h' vi-backward-char
#bindkey -M menuselect 'k' vi-up-line-or-history
#bindkey -M menuselect 'l' vi-forward-char
#bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/charlie/.zshrc'

source ~/.config/zsh/aliasrc

autoload -Uz compinit 
compinit
# End of lines added by compinstall
function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}


zle -N zle-line-init
zle -N zle-keymap-select
hi() {
    var=$(fc -lr 0 10000 | fzf | sed -e 's/^\s*[0-9]*  //g') 
    xdotool type "$var"
}

# auto delete that annoying Downloads directory
[ -d ~/Downloads ] && rm -rf ~/Downloads

fpath+=${ZDOTDIR:-~}/.zsh_functions

if command -v pfetch &>/dev/null; then
    echo;echo;pfetch
fi

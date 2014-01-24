# matches current input to history items
# bind to up arrow and down arrow
# this will change your life and make traffic bearable
# ^[[5~ PgUp
# ^[[6~ PgDn
# ^[[A  up arrow
# ^[[B  down arrow
bindkey "\e[5~" history-beginning-search-backward
bindkey "\e[6~" history-beginning-search-forward

#bindkey "^[[5~" up-line-or-history
#bindkey "^[[6~" down-line-or-history
# make search up and down work, so partially type and hit up/down to find relevant stuff
#bindkey '^[[A' up-line-or-search
#bindkey '^[[B' down-line-or-search

#bindkey '^[[5~' history-beginning-search-backward # PgUp
#bindkey '^[[6~' history-beginning-search-forward # PgDn

# Common terminal keybindings
bindkey '\e[1~' beginning-of-line
bindkey '\e[4~' end-of-line
bindkey '\e[3~' delete-char-or-list

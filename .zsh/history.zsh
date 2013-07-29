## command history configuration
HISTFILE=~/.zsh-histfile
HISTSIZE=10000
SAVEHIST=10000

# synchronize history across shells
setopt share_history
# avoid history duplication
set historyignoredups

setopt hist_verify
setopt inc_append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_space

setopt APPEND_HISTORY
setopt SHARE_HISTORY

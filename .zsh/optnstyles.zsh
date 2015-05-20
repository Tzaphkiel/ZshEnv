#######################################################
## OPTIONS
#Set the auto completion on (tab)
autoload -Uz compinit
compinit

autoload -U colors
colors

autoload -U zmv

# spelling corrections for all arguments (also commands)
setopt correctall

# typing the name of a folder cd to it if valid 
setopt autocd

# press 'y' to select correction, 'e': line up for editing again, use alias 'dh' for - history; use cd - <TAB> for dir stack
setopt autopushd pushdminus pushdsilent pushdtohome

# avoid ovewriting an existing file; to really overwrite use >! (clobber)
#setopt noclobber

# Enables the extgended globbing features
#setopt extendedglob

# turns on command substitution in the prompt (and param exp and arithm exp)
setopt PROMPT_SUBST

## jobs
setopt long_list_jobs

# the less i have to hit tab the better
setopt menu_complete


#######################################################
# STYLES
#Completion Stuff
zmodload -i zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
bindkey -M viins '\C-i' complete-word

# Faster! (?)
zstyle ':completion::complete:*' use-cache 1

# case insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' \
     'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''

# generate descriptions with magic.
zstyle ':completion:*' auto-description 'specify: %d'

# Don't prompt for a huge list, page it!
zstyle ':completion:*:default' list-prompt '%S%M matches%s'

# Don't prompt for a huge list, menu it!
zstyle ':completion:*:default' menu 'select=0'

# Have the newer files last so I see them first
zstyle ':completion:*' file-sort modification reverse

# color code completion!!!!  Wohoo!
zstyle ':completion:*' list-colors "=(#b) #([0-9]#)*=36=31"
unsetopt LIST_AMBIGUOUS
setopt  COMPLETE_IN_WORD

# Separate man page sections.  Neat.
zstyle ':completion:*:manuals' separate-sections true

# complete with a menu for xwindow ids
zstyle ':completion:*:windows' menu on=0
zstyle ':completion:*:expand:*' tag-order all-expansions

# more errors allowed for large words and fewer for small words
zstyle ':completion:*:approximate:*' max-errors 'reply=(  $((  ($#PREFIX+$#SUFFIX)/3  ))  )'

# Errors format
zstyle ':completion:*:corrections' format '%B%d (errors %e)%b'

# Don't complete stuff already on the line
zstyle ':completion::*:(rm|vi):*' ignore-line true

# Don't complete directory we are already in (../here)
zstyle ':completion:*' ignore-parents parent pwd
zstyle ':completion::approximate*:*' prefix-needed false

# Customize the completion mechanism:
# Make the kill command completion show me a list all the time so I can be
# sure I'm killing the right command. This works even with 'kill
# netscape<TAB>'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always

zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s


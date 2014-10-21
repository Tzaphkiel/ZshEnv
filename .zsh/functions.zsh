
# functions
#function namedir () { $1=$PWD ;  : ~$1 }
# the following flashes the printed string after every command... net very elegant...
#function chpwd () { print -Pn '^[]2;%~^G' }

# this function is pending the proper configuration to open a screen config directly
# this is not activated because the screenrc in the .screen do not contain the default configuration of the screen shell before executing the screen commands
#function scr(){
#  screen -c ~/.screen/$3
#}

# This function will ssh to the given bow but first set the Screen tab name to [...] := untrusted remote
function s(){
  OLD_TERM=$TERM
  TERM=xterm
  export TERM
  SSH_DESTINATION=$1
  print -Pn "\ek[$SSH_DESTINATION]\e\\"      # screen title (in ^A")
  ssh $SSH_DESTINATION
  TERM=$OLD_TERM
  export TERM
}


# This function will cat the given file without the comments
function catnc(){
  cat $1 | egrep -v "^\s*(#|$)"
}  


# ============================================================================
# Managements helper functions 
# ============================================================================
function sendFileByMail()
{
  theFile=$1
  theFileName=$2
  theSubject=$theFileName
  uuencode "$theFile" "$theFileName" | mailx -s "$theFileName" "$3"
}  


function renameScreenTab(){
  TABNAME=$1
  print -Pn "\ek$TABNAME\e\\"
}  


# Run various tmux commands from a standard location, starting a new
# tmux session if run outside one.
function tmuxLayout() {
    local conf_dir="$HOME/.tmux_configs"

    if [[ $# = 0 || -z $1 ]]; then
  echo "Usage: $0 <configuration> [tmux new options]"
  return 1
    fi

    local conf_file="$conf_dir/$1"
    shift

    if [[ ! -r $conf_file ]]; then
  echo "No such configuration: $conf_file"
  return 1
    fi

    if [[ -z $TMUX ]] ; then
  # Pre tmux-1.2, Nicholas Marriott says: "new-session without
  # -d implies attach and that stops further command
  # processing."  So we source using a shell cmd inside tmux:
  # tmux new-session "tmux new-window \\; source $conf_file"
  #
  # new-session does the right thing in tmux-1.2 and later:
        tmux new-session "$@" \; source $conf_file
    else
        tmux source $conf_file
    fi
}


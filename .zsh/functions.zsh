
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


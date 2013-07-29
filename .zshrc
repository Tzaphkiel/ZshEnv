# WARNING: .zshrc is sourced in interactive and login shells !
# for non-interactive shell, use: .zshenv
CURRENT_UID=`id | sed 's/^uid=//;s/(.*$//'`
CURRENT_SYSTEM=`uname -s | tr '[A-Z]' '[a-z]'`

if [ ! "A$CURRENT_UID" = "A0" ]
then
  TERMINFO=$HOME/.terminfo
  export TERMINFO
  TERM=xterm-256color
  export TERM
  TERMCAP=`echo $TERMCAP | sed -e 's/Co#8/Co#256/g'`
  export TERMCAP
else
  TERM=xterm
  export TERM
fi



# use default umask 022 
# allows only you to write data but anyone can only read
if [ ! "$CURRENT_UID" = "0" ]
then
  umask 077 # completely private system
else  
  umask 022 # completely private system
fi


#==========================================================================
# Other zsh definition includes
#==========================================================================
source ~/.zsh/colors.zsh 
source ~/.zsh/ls_colors.zsh 
source ~/.zsh/env.zsh 
source ~/.zsh/history.zsh 
source ~/.zsh/aliases.zsh
#if [ "$CURRENT_SYSTEM" = "linux" ]; then
#  source ~/.zsh/aliases-linux.zsh
#fi  
source ~/.zsh/optnstyles.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/bindings.zsh


#==========================================================================
# system information upon logon
#==========================================================================
#clear
echo -e "${red}Kernel Information: ${darkgray}" `uname -a`
#echo -ne "${red}Today is          : ${darkgray}" `date`; echo ""
#echo -e "${lightgray}"; cal
# line does not wrap : echo -ne `w`
#

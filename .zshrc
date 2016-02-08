# WARNING: .zshrc is sourced in interactive and login shells !
# for non-interactive shell, use: .zshenv
CURRENT_UID=`id | sed 's/^uid=//;s/(.*$//'`
CURRENT_SYSTEM=`uname -s | tr '[A-Z]' '[a-z]'`

if [ ! "A$CURRENT_UID" = "A0" ]
then
  TERMINFO=$HOME/.terminfo
  export TERMINFO
  TERM=xterm-256color
  TERMCAP=`echo $TERMCAP | sed -e 's/Co#8/Co#256/g'`
  export TERMCAP
else
  TERM=xterm
fi
export TERM

# default umask 022 for most distrib
if [ ! "A$CURRENT_UID" = "A0" ]
then
  umask 0027 # i.e.: 777-027 = 0750 for folders: moderatly restrictive permissions for user
else  
  umask 0022 # make sure for root default permissive permissions are set ! 
fi


#==========================================================================
# Other zsh definition includes
#==========================================================================
source .zsh/colors.zsh 
#source .zsh/ls_colors.zsh 
eval `dircolors .zsh/dircolors-solarized.zsh`
source .zsh/env.zsh 
source .zsh/history.zsh 
source .zsh/aliases.zsh
if [ "$CURRENT_SYSTEM" = "linux" ]; then
  source .zsh/aliases-linux.zsh
fi  
source .zsh/optnstyles.zsh
source .zsh/functions.zsh
source .zsh/prompt.zsh
source .zsh/bindings.zsh
#source .powerline/powerline/bindings/zsh/powerline.zsh
source .zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=magenta,bold'


#==========================================================================
# system information upon logon
#==========================================================================
#clear
echo -e "${red}Kernel Information: ${darkgray}" `uname -a`
#echo -ne "${red}Today is          : ${darkgray}" `date`; echo ""
#echo -e "${lightgray}"; cal
# line does not wrap : echo -ne `w`
#

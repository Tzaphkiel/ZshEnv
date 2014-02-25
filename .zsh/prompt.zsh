# PROMPT1-4 is the same as PS1-4
#
# PS1 primary prompt : before command is read
# PS2 secondary prompt: printed when shell needs more info for command (default: "%_> ")
# PS3 selection prompt: used within a select loop (default: "?# ")
# PS4 execution prompt: (default: "+")
# «  :ALT-171
# · : ALT-183
# » : ALT-187

#PROMPT="
#${fg_lgray}[${fg_yellow}%(!.${fg_red}.)%n${fg_lgray}@${fg_yellow}${at_bold}%m${at_boldoff}${fg_lgray}]:${fg_cyan}%~${fg_white}
#${fg_white}%#${at_normal} "
PROMPT4=·

PROMPT="${fg_lgray}%T [${fg_yellow}%(!.${fg_red}.)%n${fg_lgray}@${fg_yellow}${at_bold}%m${at_boldoff}: ${fg_cyan}%~${fg_white}${fg_lgray}]-[${fg_green}%?${fg_lgray}] ${at_normal}"

# RPROMPT1-2 is the same as RPS1-2
#
# RPS1 displayed on the right hand side of the screen when PS1 is displayed on the left
# RPS2 displayed on the right hand side of the screen when PS2 is displayed on the left
#RPROMPT1="[${fg_green}%T${fg_white}]${at_normal}"

# vcs_info init
autoload -Uz vcs_info
 
 zstyle ':vcs_info:*' stagedstr '%F{28}●'
 zstyle ':vcs_info:*' unstagedstr '%F{11}●'
 zstyle ':vcs_info:*' check-for-changes true
 zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{11}%r'
 zstyle ':vcs_info:*' enable git svn





#======================================================================
# PROMPT FUNCTIONS
# special function that is executed before every command (used for git, svn, etc.)
function precmd() {
  CURRENT_UID=`id | sed 's/^uid=//;s/(.*$//'`
  CURRENT_HOSTNAME=`hostname`
  if [ "$CURRENT_UID" = "0" ]
  then
    TAB_NAME=`echo $CURRENT_HOSTNAME | tr '[:lower:]' '[:upper:]'`
  else
    TAB_NAME=$CURRENT_HOSTNAME
  fi

  case $TAB_NAME in 
    xyz*|XYZ*)
      SCREEN_TAB_NAME="$TAB_NAME $(getXYZZoneType $CURRENT_HOSTNAME)"
    ;;
    *) SCREEN_TAB_NAME=$TAB_NAME ;;
  esac

  print -Pn "\ek$SCREEN_TAB_NAME\e\\"      # screen title (in ^A")
  

  #scrCtrl
  if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
    zstyle ':vcs_info:*' formats "${fg_yellow}${at_bold}%b %c %u${at_normal}"
  } else {
    zstyle ':vcs_info:*' formats "${fg_yellow}${at_bold}%b %c %u ${fg_red}●${at_normal}"
  }  
  vcs_info
  if [ -z $vcs_info_msg_0_ ]; then
    vcs_info_msg_0_="${fg_yellow}%D{%a,%b %d}"
  fi
  
  export RPS1="${fg_white}[${fg_yellow}${vcs_info_msg_0_}${fg_white}]${at_normal}"
}


function scrCtrl() {
  GIT_BRCH=`parse_git_branch`
  SVN_BRCH=`parse_svn_branch`

  if [ -z "$GIT_BRCH" ] && [ -z "$SVN_BRCH" ]
  then
    export RPS1=""
  else
    export RPS1="${fg_white}[${fg_yellow}$(parse_svn_rev)${fg_white}]${fg_white}[${fg_red}\$(parse_git_branch)\$(parse_svn_branch)${fg_white}]${at_normal}"
  fi
}
parse_git_branch () {
  git name-rev HEAD 2> /dev/null | sed 's#HEAD\ \(.*\)# git::\1#'
}
parse_svn_branch() {
  parse_svn_url | sed -e 's#^'"$(parse_svn_repository_root)"'##g' | awk '{print "svn::"$1"" }'
}
parse_svn_rev() {
  svn info 2>/dev/null | grep "Revision" | sed 's/Revision: \(.*\)/r\1/'
}
parse_svn_url() {
  svn info 2>/dev/null | sed -ne 's#^URL: ##p'
}
parse_svn_repository_root() {
  svn info 2>/dev/null | sed -ne 's#^Repository Root: ##p'
}


getXYZZoneType() {
  RET=""
  case $1 in
    xyz01|XYZ01) RET="xyz-type" ;;

    *) RET="?"
  esac
  echo $RET
}  




#kept for reference purposes
function title() {
  # escape '%' chars in $1, make nonprintables visible
  a=${(V)1//\%/\%\%}

  # Truncate command, and join lines.
  a=$(print -Pn "%12>...>$a" | tr -d "\n")

  case $TERM in
  screen)
    print -Pn "\e]2;$a @ $2\a" # plain xterm title
    print -Pn "\ek$a\e\\"      # screen title (in ^A")
    print -Pn "\e_$2   \e\\"   # screen location
    ;;
  xterm*|rxvt)
    print -Pn "\e]2;$a @ $2\a" # plain xterm title
    ;;
  esac
}


# sort out our favourite editor.
if [ -x "`which vim`" ]
then
  export EDITOR="`which vim`"
  alias vi="vim"
else
  export EDITOR=/usr/bin/vi
fi

# pager
export PAGER="less -R"

# other
DIRSTACKSIZE=20

#TERM=xterm-256color


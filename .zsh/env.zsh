# sort out our favourite editor.
if [ -x "`which vim`" ]
then
  export EDITOR="`which vim`"
  alias vi="vim"
else
  export EDITOR=/usr/bin/vi
fi
bindkey -v


export LANGUAGE="en_GB"
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/usr/lib64:/usr/lib32"
export PATH="${PATH}:/usr/bin"


# pager
export PAGER="less -R"

# other
DIRSTACKSIZE=30

#TERM=xterm-256color


# ======================
# = Proxy configuration
# ======================
pxyHost=""
pxyUser=""
pxyPass=""
pxyPort=""

#export http_proxy="http://$pxyUser:$pxyPass@$pxyHost:$pxyPort"
#export https_proxy="https://$pxyUser:$pxyPass@$pxyHost:$pxyPort"  
#export HTTP_PROXY=$http_proxy
#export HTTPS_PROXY=$https_proxy

unset pxyHost pxyUser pxyPass pxyPort


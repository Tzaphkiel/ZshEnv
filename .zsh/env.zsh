# sort out our favourite editor.
if [ -x "`which vim`" ]
then
  export EDITOR="`which vim`"
  alias vi="vim"
else
  export EDITOR=/usr/bin/vi
fi
bindkey -v

# pager
export PAGER="less -R"

# other
DIRSTACKSIZE=30

#TERM=xterm-256color


export http_proxy=http://avdownload:n0v1rus@app-gw.ecb.de:8080  
export https_proxy=https://avdownload:n0v1rus@app-gw.ecb.de:8080  
export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$https_proxy

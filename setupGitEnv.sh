#!/bin/sh
git config --global diff.tool vimdiff
git config --global difftool.prompt false
git config --global alias.d difftool

git config --global alias.lg "log --graph --abbrev-commit --decorate --pretty=format:'%C(bold cyan)%h%Creset -%C(bold yellow)%d%Creset %s %Cgreen(%cr) %C(bold green)<%an>%Creset'"




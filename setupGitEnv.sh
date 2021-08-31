#!/bin/sh
git config --global diff.tool vimdiff
git config --global difftool.prompt false
git config --global alias.d difftool

git config --global color.ui true

git config --global alias.lg "log --graph --abbrev-commit --decorate --pretty=format:'%C(bold cyan)%h%Creset -%C(bold yellow)%d%Creset %s %Cgreen(%cr) %C(bold green)<%an>%Creset'"
git config --global alias.a "add"
git config --global alias.c "commit -v"
git config --global alias.ca "commit -v -a"
git config --global alias.cm "commit -m"
git config --global alias.s "status -s"
git config --global alias.st "status"

git config --global credential.helper "cache --timeout=7200"
git config --global push.default simple

# ask the username and email address of the git user
read -e -p "GIT global user.name: " GIT_USERNAME
read -e -p "GIT global user.email: " GIT_EMAIL

git config --global user.email "$GIT_EMAIL"
git config --global user.name "$GIT_USERNAME"

# for windows only : git config --global core.whitespace cr-at-eol

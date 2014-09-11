#!/bin/sh
BASEDIR=$(pwd)
# Cleaning home folder first
# backing up existing links, files or data
echo "Backing up existing files..."
tar cfz shellFilesBackup.tar.gz ~/.vim ~/.zsh ~/.fonts ~/.zshrc ~/.screenrc ~/.vimrc

# delete existing links, files or data
echo "Removing existing files..."
rm -rf ~/.vim ~/.zsh ~/.fonts ~/.zshrc ~/.screenrc ~/.vimrc
# Folders with lib and refed files
echo "Installing vim dependencies..."
ln -s $BASEDIR/.vim ~/.vim
echo "Installing zsh dependencies..."
ln -s $BASEDIR/.zsh ~/.zsh
echo "Installing fonts..."
ln -s $BASEDIR/.fonts ~/.fonts

# Shell files and various config files
echo "Installing configuration of zsh, screen and vim..."
ln -s $BASEDIR/.zshrc ~/.zshrc
ln -s $BASEDIR/.screenrc ~/.screenrc
ln -s $BASEDIR/.vimrc ~/.vimrc
ln -s $BASEDIR/.scripts ~/.scripts
ln -s $BASEDIR/.powerline ~/.powerline

echo "All done, exit (maybe logout) and re-start shell (z-shell) !"

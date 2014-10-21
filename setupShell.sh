#!/bin/sh
BASEDIR=$(pwd)
TS=`date +"%Y%m%d_%H%M"`
# Cleaning home folder first
# backing up existing links, files or data
echo "Backing up existing files..."
tar cfz ~/ZshEnv_ShellSetupBackup-${TS}.tar.gz ~/.vim ~/.zsh ~/.fonts ~/.zshrc ~/.screenrc ~/.vimrc ~/.Xresources

# delete existing links, files or data
echo "Removing existing files..."
rm -rf $BASEDIR/.vim $BASEDIR/.zsh $BASEDIR/.fonts $BASEDIR/.zshrc $BASEDIR/.screenrc $BASEDIR/.vimrc $BASEDIR/.Xresources


# Folders with lib and refed files
echo "Installing vim dependencies..."
ln -s $BASEDIR/.vim ~/.vim
echo "Installing zsh dependencies..."
ln -s $BASEDIR/.zsh ~/.zsh
echo "Installing fonts..."
echo "  Downloading patched fonts..."
cd $BASEDIR/.fonts
wget https://github.com/Lokaltog/powerline-fonts/raw/master/DejaVuSansMoni/DejaVu\ Sans\ Mono\ for\ Powerline.ttf
wget https://github.com/Lokaltog/powerline-fonts/raw/master/DejaVuSansMono/DejaVu\ Sans\ Mono\ for\ Powerline.ttf
wget https://github.com/Lokaltog/powerline-fonts/raw/master/DejaVuSansMono/DejaVu\ Sans\ Mono\ Oblique\ for\ Powerline.ttf
wget https://github.com/Lokaltog/powerline-fonts/raw/master/DejaVuSansMono/DejaVu\ Sans\ Mono\ Bold\ for\ Powerline.ttf
wget https://github.com/Lokaltog/powerline-fonts/raw/master/DejaVuSansMono/DejaVu\ Sans\ Mono\ Bold\ Oblique\ for\ Powerline.ttf
cd $BASEDIR
ln -s $BASEDIR/.fonts ~/.fonts
echo "  Updating the font-cache..."
fc-cache -vf ~/.fonts
sudo fc-cache -vf ~/.fonts

# Xresources
 $BASEDIR/.Xresources ~/.Xresources

# Shell files and various config files
echo "Installing configuration of zsh, screen and vim..."
ln -s $BASEDIR/.zshrc ~/.zshrc
ln -s $BASEDIR/.screenrc ~/.screenrc
ln -s $BASEDIR/.vimrc ~/.vimrc
ln -s $BASEDIR/.scripts ~/.scripts
ln -s $BASEDIR/.powerline ~/.powerline

echo "All done, exit (maybe logout) and re-start shell (z-shell) !"

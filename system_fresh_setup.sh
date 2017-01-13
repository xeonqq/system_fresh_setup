#!/bin/sh

sudo apt-get -y install vim-gnome
sudo apt-get -y install zsh
sudo apt-get -y install git cmake graphviz doxygen
git config --global user.email "xeonqq@gmail.com"
git config --global user.name "xeonqq" 
sudo usermod -a -G dialout `whoami`

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/xeonqq/my_vim_plugins.git ${HOME}/.vim
cd !$
git submodule init
git submodule update
ln -s ${HOME}/.vim/.vimrc ${HOME}/.vimrc


#!/bin/bash

cd "$(dirname "$0")"

VIMRC="../.vimrc"

#Make sure we have vim
if [ ! -x /usr/bin/vim ] ; then
	sudo apt-get install vim
fi

#Create symlink for .vimrc
if [ ! -h $VIMRC ] ; then
	if [ -f $VIMRC ] ; then
		mv $VIMRC $VIMRC.bak
		echo "Backup of .vimrc made."
	fi
	ln -s .vim/.vimrc $VIMRC
	echo ".vimrc symlink created."
fi

#Create directories for swap, etc.
mkdir -p ~/.cache/vim/{swap,backup,undo}

#Install Vundle
if [ ! -d "bundle/vundle" ] ; then
	mkdir -p bundle
	git clone https://github.com/gmarik/vundle bundle/vundle
fi

#Install/update plugins
vim +BundleInstall!

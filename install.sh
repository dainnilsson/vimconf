#!/bin/bash

cd "$(dirname "$0")"

VIMRC="../.vimrc"

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

#Install/update plugins
vim +BundleInstall!

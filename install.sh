#!/bin/bash

cd "$(dirname "$0")"

git submodule update --init
echo "Submodules updated."

VIMRC="../.vimrc"

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

#!/bin/sh

if [ "$1" = "packages" ]
then
	packages="
	curl
	tree
	vim
	wget"

sudo dnf install $packages
fi

# Simlinks to home
#stow git
#stow vim

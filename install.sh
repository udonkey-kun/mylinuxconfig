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

# Symlinks to home
unlink /home/$USER/.bashrc
rm -rf /home/$USER/.bashrc
ln -s /home/$USER/.mylinuxconfig/dotfiles/.bashrc /home/$USER/.bashrc

unlink /home/$USER/.vimrc 
rm -rf  /home/$USER/.vimrc 
ln -s /home/$USER/.mylinuxconfig/dotfiles/.vimrc /home/$USER/.vimrc

unlink /home/$USER/.gitconfig
rm -rf /home/$USER/.gitconfig
ln -s /home/$USER/.mylinuxconfig/dotfiles/.gitconfig /home/$USER/.gitconfig

unlink /home/$USER/docs
ln -s /home/$USER/.mylinuxconfig/docs/ /home/$USER/docs

unlink /home/$USER/ansible-playbook-templates
ln -s /home/$USER/.mylinuxconfig/ansible-playbook-templates/ /home/$USER/ansible-playbook-templates

#Execute after script
echo "Don't forget :"
echo "source ~/.bashrc"

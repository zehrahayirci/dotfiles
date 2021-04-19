
#!/usr/bin/env bash

# Dont link DS_Store files
find . -name ".DS_Store" -exec rm {} \;

OLD_DOTFILES="dotfile_bk_$(date -u +"%Y%m%d%H%M%S")"
mkdir $OLD_DOTFILES

function backup_if_exists() {
    if [ -f $1 ];
    then
      mv $1 $OLD_DOTFILES
    fi
    if [ -d $1 ];
    then
      mv $1 $OLD_DOTFILES
    fi
}

# Clean common conflicts
backup_if_exists ~/.bash_profile
backup_if_exists ~/.bashrc
backup_if_exists ~/.zshrc
backup_if_exists ~/.gitconfig
backup_if_exists ~/.profile

SYMLINKS=()

ln -sf ~/dotfiles/.bashrc ~/.bashrc
SYMLINKS+=('.bashrc')
ln -sf ~/dotfiles/bash_profile ~/.bash_profile
SYMLINKS+=('.bash_profile')
ln -sf ~/dotfiles/.zshrc ~/.zshrc
SYMLINKS+=('.zshrc')
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
SYMLINKS+=('.gitconfig')
ln -sf ~/dotfiles/.profile ~/.profile
SYMLINKS+=('.profile')

echo ${SYMLINKS[@]}

#==============
# Set zsh as the default shell
#==============
chsh -s /bin/zsh

#==============
# And we are done
#==============
echo -e "\n====== You are done!! ======\n"

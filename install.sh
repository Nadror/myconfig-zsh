#!/bin/bash

###Install zsh git wget####
echo -e "Check if we have zsh, git and wget ...\n"
    if [ -d /usr/bin/wget ] && [ -d /usr/bin/git ] && [ -d /usr/bin/zsh ]; then
        echo -e "zsh wget and git are already installed\n"
    else
        echo -e "You need to install at your own : 'sudo apt install -y zsh git wget'" && exit
    fi

###Install oh-my-zsh####
echo -e "Installing oh-my-zsh...\n"
    if [ -d ~/.oh-my-zsh ]; then
        echo -e "oh-my-zsh is already installed, please remove --> /home/$USER/.oh-my-zsh" && exit
    else
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    fi

###Install autosuggestions plugin###
echo -e "Installing autosuggestions plugin...\n"
    if [ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
        echo -e "autosuggestions plugin is already installed\n"
    else
        mkdir -p ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
        git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    fi

###Install my config in recent USER
echo -e "Install my config ZSH...\n"
    if [ -d ~/.zshrc ]; then
        mv -n ~/.zshrc ~/.zshrc-backup-$(date +"%Y-%m-%d")# Backup .zshrc
        echo -e "File already existed .zshrc to .zshrc-'date' backup created.\n"
    else
        mkdir -p ~/.oh-my-zsh/custom/themes/
        curl -fsSL https://raw.githubusercontent.com/Nadror/myconfig-zsh/master/config/nadror.zsh-theme -o  ~/.oh-my-zsh/custom/themes/nadror.zsh-theme
        curl -fsSL https://raw.githubusercontent.com/Nadror/myconfig-zsh/master/config/.zshrc  -o ~/.zshrc
        source ~/.zshrc
        echo -e "Config installed\n"
        zsh
    fi
exit

#Credit
#ohmyzsh: https://ohmyz.sh/
#zsh: https://www.zsh.org/
#plugin : https://github.com/zsh-users/zsh-autosuggestions
#Pierre i saw you

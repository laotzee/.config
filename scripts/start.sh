#!bin/bash

# Todo before running:
    # Connect to internet
    # Setup SSH
    # While installing the Nvidia drives, you'll need to create a password
    #
# Things to implement:
    # if statement for separating part one (all the installation) and the
        # reboot after doing Nvidia stuff
    # Program fresh backup using timeshift
    #

if $1 -eq 1; then

    cd

    dnf update -y

    dnf install git -y

    git clone git@github.com:laotzee/.config.git

    cd .config/alacritty
    git clone https://github.com/alacritty/alacritty-theme.git

    cd

    mkdir projects

    cd projects

    git clone git@github.com:laotzee/pomi.git

    cd

    # Regular packages I like
    dnf install alacritty timeshift firefox neovim lynx flameshot qbittorrent gparted libreoffice

    # Video drivers 
    dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

    dnf config-manager setopt fedora-cisco-openh264.enabled=1 #Just for Fedora 41 onwards

    # Installing Nvidia drivers

    dnf install kmodtool akmods mokutil openssl -y

    kmodgenca -a

    mokutil --import /etc/pki/akmods/certs/public_key.der

    # You'll be prompted to provide a password, you'll need it after reboot. 

    systemctl reboot

elif [ $1 -eq 2 ]; then

    sudo dnf install akmod-nvidia # rhel/centos users can use kmod-nvidia instead
    sudo dnf install xorg-x11-drv-nvidia-cuda #optional for cuda/nvdec/nvenc support


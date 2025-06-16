#!bin/bash


# Connect to wifi
nmcli d wifi connect ABAULTRAWIFI67DC password 485754432AD3649B

sudo dnf update -y

# Regular packages I like
sudo dnf install alacritty timeshift firefox neovim lynx flameshot git qbittorrent gparted

# Video drivers
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1 #Just for Fedora 41 onwards 

# Installing Nvidia drivers

sudo dnf install kmodtool akmods mokutil openssl -y

sudo kmodgenca -a

sudo mokutil --import /etc/pki/akmods/certs/public_key.der

systemctl reboot

sudo dnf install akmod-nvidia # rhel/centos users can use kmod-nvidia instead
sudo dnf install xorg-x11-drv-nvidia-cuda #optional for cuda/nvdec/nvenc support

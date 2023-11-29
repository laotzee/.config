#! /bin/bash

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -yy 

sudo dnf config-manager --enable fedora-cisco-openh264


sudo dnf install git vlc alacritty neovim tmux kmod-nvidia timeshift ffmpeg ffmpeg-devel flatpak --allowerasing -yy

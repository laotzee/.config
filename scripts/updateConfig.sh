#!/bin/bash

#nvim
rsync ~/.config/nvim/init.lua ~/projects/.config/nvim/init.lua

#i3
rsync ~/.config/i3/config ~/projects/.config/i3/config
rsync ~/.config/i3/vol.sh ~/projects/.config/i3/vol.sh
rsync ~/.config/i3status/config ~/projects/.config/i3status/config

#bashrc
rsync ~/.bashrc ~/projects/.config/scripts/.bashrc

#picom
rsync ~/.config/picom/picom.conf ~/projects/.config/picom/picom.conf

#lynx
rsync ~/.config/lynx/lynx.cfg ~/projects/.config/lynx/lynx.cfg
rsync ~/.config/lynx/lynx.lss ~/projects/.config/lynx/lynx.lss

#alacritty
rsync ~/.config/alacritty/alacritty.toml ~/projects/.config/alacritty/alacritty.toml
rsync ~/.config/alacritty/laotze.toml ~/projects/.config/alacritty/laotze.toml


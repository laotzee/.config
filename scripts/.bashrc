# Work areas
#

export w1=~/writing/posts/eng/drafts/5.md
export w2=~/writing/posts/esp/4.md

export d=~/writing/daily/$(date +%Y-%m-%d).md

# General programs
#
alias pomi='python3 ~/projects/pomi/src/main.py'
alias ct='python3 ~/projects/Script-Dump/utility/uncheck-todo/main.py ~/todo.md'

# Development

alias venv='source .venv/bin/activate'
alias cvenv='python -m venv .venv'

#
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Git command abbreviations
 
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gco='git checkout'
alias gb='git branch'
alias gbr='git branch --remote'
alias gcm='git commit -m'
alias gpl='git pull'
alias gps='git push'
alias gcl='git clone'
alias gd='git diff'
alias gr='git restore'

# DNF

alias dus='sudo dnf update -y'
alias di='sudo dnf install -y'
alias dr='sudo dnf remove'
alias ds='dnf search'

# Django

alias pmmk='python3 manage.py makemigrations'
alias pmm='python3 manage.py migrate'
alias pmr='python3 manage.py runserver'
alias pmt='python3 manage.py test'

# Bash

alias sb="source $HOME/.bashrc"
alias conf="nvim $HOME/.bashrc"
alias uconf='bash ~/projects/.config/scripts/updateConfig.sh'

# Environment variables

export WWW_HOME='duckduckgo.com'
export LYNX_CFG=~/.config/lynx/lynx.cfg
export LYNX_LSS=~/.config/lynx/lynx.lss
export PATH="$HOME/scripts:$PATH"
export EDITOR="/usr/bin/nvim"
export VISUAL="$EDITOR"

#!/bin/bash

if [ -f /var/lib/pacman/db.lck ];then
    rm /var/lib/pacman/db.lck
    pacman -Sy
fi

pacman -Sy --noconfirm
pacman -S archlinux-keyring --noconfirm
pacman -Su --noconfirm
pacman-db-upgrade
pacman -S base-devel --noconfirm --needed
pacman -S python --noconfirm --needed
pacman -S clojure --noconfirm --needed
pacman -S git zsh tmux --noconfirm --needed
pacman -S emacs-nox vim --noconfirm --needed
pacman -S ghc cabal-install happy --noconfirm --needed
pacman -S virtualbox-guest-utils --noconfirm --needed

sed -i -e "s/#ja_JP.UTF-8/ja_JP.UTF-8/" /etc/locale.gen

locale-gen

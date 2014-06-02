#!/bin/bash
pacman -Syu --noconfirm
pacman -S base-devel --noconfirm --needed
pacman -S ruby python --noconfirm --needed
pacman -S sqlite git ghc cabal-install clojure zsh tmux emacs-nox vim --noconfirm --needed
pacman -S virtualbox-guest-utils --noconfirm --needed

sed -i -e "s/#ja_JP.UTF-8/ja_JP.UTF-8/" /etc/locale.gen

locale-gen

#!/bin/bash

sudo sh -c 'echo "" >> /etc/pacman.conf'
sudo sh -c 'echo "[archlinuxfr]" >> /etc/pacman.conf'
sudo sh -c 'echo "SigLevel = Never" >> /etc/pacman.conf'
sudo sh -c 'echo "Server = http://repo.archlinux.fr/\$arch" >> /etc/pacman.conf'

sudo pacman -Sy yaourt --noconfirm --needed

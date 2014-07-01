#!/bin/sh
which rbenv > /dev/null 2>&1
if [ $? -eq 1 ]; then
    curl -O https://aur.archlinux.org/packages/pa/package-query/package-query.tar.gz
    tar zxvf package-query.tar.gz
    cd package-query
    makepkg -si --noconfirm --needed
    cd ..
    curl -O https://aur.archlinux.org/packages/ya/yaourt/yaourt.tar.gz
    tar zxvf yaourt.tar.gz
    cd yaourt
    makepkg -si --noconfirm --needed
    cd ..
    rm package-query.tar.gz
    rm -rf package-query
    rm yaourt.tar.gz
    rm -rf yaourt
fi

yaourt -Syu --devel --aur
# {
# echo [archlinuxfr]
# echo SigLevel = Never
# echo Server = http://repo.archlinux.fr/$arch
# } >> /etc/pacman.conf

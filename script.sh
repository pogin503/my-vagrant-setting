#!/bin/sh
pacman -Syu --noconfirm
pacman -S base-devel --noconfirm --needed
pacman -S ruby python --noconfirm --needed
pacman -S sqlite git ghc cabal-install clojure zsh tmux emacs-nox vim --noconfirm --needed

# git clone https://github.com/pogin503/dot-emacs repo/dot-emacs
# git clone git@github.com:ogin503/dot-emacs.git

# # oh-my-zsh
curl -L http://install.ohmyz.sh | sh

# # rbenv
# git clone git://github.com/sstephenson/rbenv.git .rbenv
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
# echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

# git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# # ruby
# gem i bundler

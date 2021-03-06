#!/usr/bin/env bash

# oh-my-zsh
curl -L http://install.ohmyz.sh | sh

# oh-my-zsh (manual)
# git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# cp ~/.zshrc ~/.zshrc.orig
# cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
# chsh -s /bin/zsh

# change shell
# cp ~/.zshrc ~/.zshrc.orig
# cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
sudo chsh -s "$(which zsh)" vagrant


# rbenv
git clone https://github.com/sstephenson/rbenv.git .rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

source "$HOME"/.bash_profile

# rbenv
rbenv install 2.4.0
rbenv global 2.4.0
rbenv rehash
rbenv versions

# gem
gem i bundler

git clone https://github.com/pogin503/dot-files.git ~/dotfiles
cd ~/dotfiles
./setup.sh

# cabal
echo 'export PATH=$HOME/.cabal/bin/:$PATH' >> $HOME/.bash_profile
echo 'export PATH=$HOME/.cabal/bin/:$PATH' >> $HOME/.zshrc

cabal update

git clone https://github.com/pogin503/dot-emacs.git ~/.emacs.d
cd ~/.emacs.d
./setup.sh

echo 'export PATH="$HOME/.cask/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="$HOME/.cask/bin:$PATH"' >> ~/.zshrc

echo $PATH

#!/bin/sh

# oh-my-zsh
curl -L http://install.ohmyz.sh | sh

# git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# cp ~/.zshrc ~/.zshrc.orig
# cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
# chsh -s /bin/zsh

# # ruby
# gem i bundler

# rbenv
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshenv
echo 'eval "$(rbenv init -)"' >> ~/.profile
echo 'eval "$(rbenv init -)"' >> ~/.zshenv

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
sudo chsh -s $(which zsh) vagrant

# cabal
echo "export PATH=$HOME/.cabal/bin/:$PATH" >> $HOME/.profile
echo "export PATH=$HOME/.cabal/bin/:$PATH" >> $HOME/.zshenv

echo $PATH

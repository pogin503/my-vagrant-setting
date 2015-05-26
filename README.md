My vagrant example
==================

- [Archlinux 2013-08-09](http://iweb.dl.sourceforge.net/project/vagrantarchlinx/2011.08.19/archlinux_2011.08.19.box)

###First, install the applications.

- [Install VirtualBox](https://www.virtualbox.org/wiki/Downloads)

- [install Vagrant](http://www.vagrantup.com/downloads.html)

#How do I run the examples?

```
git clone https://github.com/pogin503/my-vagrant-setting.git ~/workspace/vagrant/my-vagrant-setting
```

```
cd my-vagrant-setting
vagrant up
vagrant ssh
```

#Useful alias

```
alias vl="VBoxManage list runningvms"
alias vu="vagrant up"
alias vd="vagrant suspend"
alias vr="vagrant reload"
alias vs="vagrant ssh"
alias ga="git add ."
alias gc="git commit -a"
alias gp="git push"
```

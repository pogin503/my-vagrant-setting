# -*- coding: utf-8; mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = 'arch64'
  config.vm.box_url = 'https://dl.dropboxusercontent.com/u/31112574/arch64-20130801.box'

  # config.vm.provision  'docker' do |d|
  #   # d.run 'arch',
  #   #   cmd: 'bash -l',
  #   #   args: '-v 'vagrant:/var/www''
  # end
  config.vm.synced_folder '../source', '/home/vagrant/source',
                          create: true, owner: 'vagrant',
                          group: 'vagrant',
                          mount_options: ['dmode=777', 'fmode=766']

  config.vm.provider 'virtualbox' do |v|
    # v.gui = true

    # --ioapic on : 2コア以上使う場合に有効にする
    # v.customize ['modifyvm', :id, '--ioapic', 'on']
  end

  config.vm.provision 'shell', path: 'script.sh'
  config.vm.provision 'shell', path: 'create_swap.sh'
  config.vm.provision 'shell', path: 'install_yaourt.sh', privileged: false
  config.vm.provision 'shell', path: 'install_user.sh', privileged: false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network :forwarded_port, guest: 80, host: 8080

  # config.vm.network :private_network, ip: '192.168.33.10'

  # config.vm.network :public_network

  # config.ssh.forward_agent = true

  # Enable provisioning with chef solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding
  # some recipes and/or roles.
  #
  # config.vm.provision :chef_solo do |chef|
  #   # chef.cookbooks_path = '../my-recipes/cookbooks'
  #   # chef.roles_path = '../my-recipes/roles'
  #   # chef.data_bags_path = '../my-recipes/data_bags'
  #   # chef.add_recipe 'mysql'
  #   # chef.add_role 'web'

  #   # You may also specify custom JSON attributes:
  #   # chef.json = { mysql_password: 'foo' }
  # end

  # Enable provisioning with chef server, specifying the chef server URL,
  # and the path to the validation key (relative to this Vagrantfile).
  #
  # The Opscode Platform uses HTTPS. Substitute your organization for
  # ORGNAME in the URL and validation key.
  #
  # If you have your own Chef Server, use the appropriate URL, which may be
  # HTTP instead of HTTPS depending on your configuration. Also change the
  # validation key to validation.pem.
  #
  # config.vm.provision :chef_client do |chef|
  #   chef.chef_server_url = 'https://api.opscode.com/organizations/ORGNAME'
  #   chef.validation_key_path = 'ORGNAME-validator.pem'
  # end
  #
  # If you're using the Opscode platform, your validator client is
  # ORGNAME-validator, replacing ORGNAME with your organization name.
  #
  # If you have your own Chef Server, the default validation client name is
  # chef-validator, unless you changed the configuration.
  #
  #   chef.validation_client_name = 'ORGNAME-validator'
end

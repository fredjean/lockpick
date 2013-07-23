# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu-precise-64"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.provision :shell, path: 'upgrade-chef.sh'
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe('apt')
    chef.add_recipe('build-essential')
    chef.add_recipe('ruby_build')
    chef.add_recipe('rbenv::system')
    chef.add_recipe('vim')
    chef.add_recipe('rbenv::vagrant')

    # You may also specify custom JSON attributes:
    chef.json = {
      rbenv: {
        rubies: [ "1.9.3-p385" ],
        upgrade: 'sync',
        global: '1.9.3-p385',
        gems: {
          '1.9.3-p385' => [
            { name: 'bundler' }
          ]
        }
      }
    }
  end
end

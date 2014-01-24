# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "rails_dev"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.synced_folder "Project", "/home/vagrant/Project" 
  
  config.vm.provision :shell, :privileged => false, :inline =>
  <<-EOS
    sudo apt-get update
      sudo apt-get -y install bash build-essential tmux vim git-core curl
      curl -L https://get.rvm.io | bash -s
      source ~/.rvm/scripts/rvm
      rvm install 2.0.0
      gem update --system 2.2.1
      gem install rails --version 4.0.2
      sudo apt-get install -y libxslt-dev libxml2-dev
      sudo apt-get install -y postgresql
      sudo apt-get install -y libpq-dev
      sudo apt-get install -y openssl
      sudo apt-get install -y nodejs
      cd Project
      bundle install
      rake rails:update:bin
      
  EOS
end


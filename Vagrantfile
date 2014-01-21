# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.synced_folder "Project", "/home/vagrant/Project" 

  config.vm.provision :shell do |shell|
    shell.inline = <<-EOS
      sudo apt-get update

    
      sudo apt-get -y install bash build-essential tmux vim git-core curl
      sudo apt-get install nodejs
      curl -L https://get.rvm.io | bash -s stable
      source /etc/profile.d/rvm.sh
      source /usr/local/rvm/scripts/rvm
      source /home/vagrant/.profile
      echo 'export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8' > /etc/profile.d/pg.sh
      rvm install 2.0.0
      rvm use 2.0.0 --default
      rvmsudo gem install rails
      sudo apt-get -y install postgresql libpq-dev postgresql-contrib
      rvmsudo gem install pg 
      
    EOS
  end
end

Vagrant::Config.run do |config|

  config.vm.box = 'mongo'
  config.vm.box_url = 'http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box'
  config.vm.provision :shell, :inline => 'sudo apt-get update && sudo apt-get install puppet -y'

  config.vm.provision 'puppet' do |puppet|
    puppet.module_path = 'modules'
    puppet.options = '--verbose --debug'
  end

  config.vm.define :mongo1 do |mongo|
    mongo.vm.forward_port 27017, 27018
    mongo.vm.network :hostonly, '192.166.50.4'
    mongo.vm.host_name = 'mongo1.local'
  end

  #config.vm.define :mongo2 do |mongo|
  #  mongo.vm.forward_port 27017, 27019
  #  mongo.vm.network :hostonly, '192.166.50.5'
  #  mongo.vm.host_name = 'mongo2.local'
  #end
  #
  #config.vm.define :mongo3 do |mongo|
  #  mongo.vm.forward_port 27017, 27020
  #  mongo.vm.network :hostonly, '192.166.50.6'
  #  mongo.vm.host_name = 'mongo3.local'
  #end

end

Vagrant::Config.run do |config|

  config.vm.box = 'mongo'
  config.vm.box_url = 'http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box'

  # Update puppet and basic stuff
  config.vm.provision :shell, :inline => 'sudo apt-get update && sudo apt-get install puppet -y -q'
  config.vm.define :mongo1 do |mongo|
    mongo.vm.host_name = 'mongodb1'
    mongo.vm.network :hostonly, '10.0.0.2'
    mongo.vm.provision :puppet, module_path: 'modules', facter: {mongo_number: '1'}
  end

  config.vm.define :mongo2 do |mongo|
    mongo.vm.host_name = 'mongodb2'
    mongo.vm.network :hostonly, '10.0.0.3'
    mongo.vm.provision :puppet, module_path: 'modules', facter: {mongo_number: '2'}
  end

  config.vm.define :mongo3 do |mongo|
    mongo.vm.host_name = 'mongodb3'
        mongo.vm.network :hostonly, '10.0.0.4'
    mongo.vm.provision :puppet, module_path: 'modules', facter: {mongo_number: '3'}
  end

end

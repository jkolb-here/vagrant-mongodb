Vagrant::Config.run do |config|

  config.vm.box = 'mongo'
  config.vm.box_url = 'http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box'

  # Update puppet and basic stuff
  config.vm.provision :shell, :inline => 'sudo apt-get update && sudo apt-get install puppet -y -q'

  config.vm.define :mongo1 do |mongo|
    mongo.vm.network :hostonly, '10.11.12.13'
    mongo.vm.host_name = 'mongo1.local'
    mongo.vm.provision :puppet, module_path: 'modules', facter: {mongo_number: '1'}
  end

  config.vm.define :mongo2 do |mongo|
    mongo.vm.network :hostonly, '10.11.12.14'
    mongo.vm.host_name = 'mongo2.local'
    mongo.vm.provision :puppet, module_path: 'modules', facter: {mongo_number: '2'}
  end

  config.vm.define :mongo3 do |mongo|
    mongo.vm.network :hostonly, '10.11.12.15'
    mongo.vm.host_name = 'mongo3.local'
    mongo.vm.provision :puppet, module_path: 'modules', facter: {mongo_number: '3'}
  end

end

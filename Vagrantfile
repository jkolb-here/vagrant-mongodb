Vagrant::Config.run do |config|

  config.vm.box = 'mongo'
  config.vm.box_url = 'http://files.vagrantup.com/lucid64.box'

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'manifests'
    puppet.manifest_file = 'base.pp'
    puppet.module_path = 'modules'
  end

  config.vm.define :mongo1 do |mongo|
    mongo.vm.forward_port 27017, 27018
    mongo.vm.network :hostonly, '192.166.50.4'
    mongo.vm.host_name = 'mongo1.local'
  end

  config.vm.define :mongo2 do |mongo|
    mongo.vm.forward_port 27017, 27019
    mongo.vm.network :hostonly, '192.166.50.5'
    mongo.vm.host_name = 'mongo2.local'
  end

  config.vm.define :mongo3 do |mongo|
    mongo.vm.forward_port 27017, 27020
    mongo.vm.network :hostonly, '192.166.50.6'
    mongo.vm.host_name = 'mongo3.local'
  end

end

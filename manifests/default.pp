include mongodb
include apt


# Install the MongoDB shard server
mongodb::mongod {'mongod_Shard1': mongod_instance => "Shard1", mongod_port => '27019', mongod_replSet => "Shard1", mongod_shardsvr => 'true' }
mongodb::mongod {'mongod_Shard2': mongod_instance => "Shard2", mongod_port => '27020', mongod_replSet => "Shard2", mongod_shardsvr => 'true' }
mongodb::mongod {'mongod_Shard3': mongod_instance => "Shard3", mongod_port => '27021', mongod_replSet => "Shard3", mongod_shardsvr => 'true' }

# Install the MongoDB Loadbalancer server
mongodb::mongos {
  'mongos_profile':
  mongos_instance      => 'mongoproxy',
  mongos_port          => 27017,
  mongos_configServers => '10.11.12.13:27018,10.11.12.14:27018,10.11.12.15:27018'
}

mongodb::mongod {
  'mongod_config':
  mongod_instance  => 'profileConfig',
  mongod_port      => 27018,
  mongod_replSet   => '',
  mongod_configsvr => 'true'
}
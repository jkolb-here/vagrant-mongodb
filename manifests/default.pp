include mongodb
include apt


# Install the MongoDB shard server
mongodb::mongod {'mongod_shard1': mongod_instance => "shard1", mongod_port => '27019',
  mongod_replSet => "shard1", mongod_shardsvr => 'true' }
mongodb::mongod {'mongod_shard2': mongod_instance => "shard2", mongod_port => '27020',
  mongod_replSet => "shard2", mongod_shardsvr => 'true' }
mongodb::mongod {'mongod_shard3': mongod_instance => "shard3", mongod_port => '27021',
  mongod_replSet => "shard3", mongod_shardsvr => 'true' }

# Install the MongoDB Loadbalancer server
mongodb::mongos {
  'mongos_profile':
  mongos_instance      => 'mongoproxy',
  mongos_port          => 27017,
  mongos_configServers => 'mongodb1:27018,mongodb2:27018,mongodb3:27018'
}

mongodb::mongod {
  'mongod_config':
  mongod_instance  => 'configsrv',
  mongod_port      => 27018,
  mongod_replSet   => '',
  mongod_configsvr => 'true'
}
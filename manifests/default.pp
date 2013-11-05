include mongodb
include apt

mongodb::mongod {
  'mongod_instance_1':
  mongod_instance    => 'mongod_1'
}
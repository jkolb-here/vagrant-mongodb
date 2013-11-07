Vagrant 3 box sharded replicated mongo cluster on Ubuntu 12.04
===============

## Background

This repo is a launch pad for setting up 3 separate VMs running a full mongo cluster. Each of the 3 boxes in the
cluster contain a mongos load balancer, 3 mongod replica servers, and a mongod instance running as a configuration server.

This is not perfect, and could probably use some love moving forward. Please feel free to contribute.

## Getting Started

- Run `vagrant up`
- SSH into each of the boxes and add host entries for mongodb1, mongodb2, mongodb3 with respective ips of 10.0.0.2 - 4
- SSH into each of the boxes and run `sudo /etc/init.d/mongos_mongoproxy restart` (restarts the mongos instances because they need the config servers running before they start)
- Set up the replica set
 - SSH into the first mongo box: `vagrant ssh mongo1`
 - Run `mongo 127.0.0.1:27019/admin --eval 'rs.initiate()'`
 - Run `mongo 127.0.0.1:27020/admin --eval 'rs.initiate()'`
 - Run `mongo 127.0.0.1:27021/admin --eval 'rs.initiate()'`
- Set up your [sharded DBs and Collections](http://docs.mongodb.org/manual/tutorial/deploy-shard-cluster/)

Happy coding!

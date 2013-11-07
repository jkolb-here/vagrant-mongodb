Vagrant 3 box sharded replicated mongo cluster on Ubuntu 12.04
===============

## Getting Started

- Run `vagrant up`
- SSH into each of the boxes and add host entries for mongodb1, mongodb2, mongodb3 with respective ips of 10.0.0.2 - 4
- Set up the replica set
-- SSH into the first mongo box: `vagrant ssh mongo1`
-- Run `mongo 127.0.0.1:27019/admin --eval 'rs.initiate()'
-- Run `mongo 127.0.0.1:27020/admin --eval 'rs.initiate()'
-- Run `mongo 127.0.0.1:27021/admin --eval 'rs.initiate()'
- Set up your shared db and collections

Have fun!

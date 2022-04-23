#!/bin/bash

if [ ! -f patch/collect ]; then
  #sudo apt install libtool libzstd-dev unzip redis
  cp --parents Makefile patch/
  cp --parents ./src/rocksdb-4.13/util/thread_local.h patch/
  cp --parents ./src/rocksdb-4.13/utilities/persistent_cache/hash_table_evictable.h patch/
  cp --parents ./src/rocksdb-4.13/utilities/persistent_cache/block_cache_tier_file.cc patch/
  cp --parents ./src/rocksdb-4.13/utilities/persistent_cache/block_cache_tier_file.h patch/
  cp --parents ./src/rocksdb-4.13/Makefile patch/
  cp --parents ./src/rocksdb-4.13.tar.gz patch/
fi

# ubuntu@instance-20220413-0918:~/rocksdb-server$  redis-benchmark -p 6379 -t set,get -n 10000000 -q -P 256 -c 256
#SET: 1713502.38 requests per second
#GET: 2233139.75 requests per second
#ubuntu@instance-20220413-0918:~$  redis-benchmark -p 5555 -t set,get -n 10000000 -q -P 256 -c 256
#SET: 398739.97 requests per second
#GET: 1846722.12 requests per second

# cp rocksdb-server /run/user/1001/; cd /run/user/1001/; ./rocksdb-server
#SET: 577634.00 requests per second
#GET: 1709694.00 requests per second



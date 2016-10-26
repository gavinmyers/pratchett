#!/bin/bash
echo "Starting Redis Manually because... reasons"
redis-server /etc/redis/redis.conf --protected-mode no

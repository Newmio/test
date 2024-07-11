#!/bin/bash

set -e
sleep 30

yes "yes" | redis-cli --cluster create \
    localhost:6380 \
    localhost:6381 \
    localhost:6382 \
    localhost:6383 \
    localhost:6384 \
    localhost:6385 \
    --cluster-replicas 1 -a yourpassword

redis-cli -a yourpassword --cluster check localhost:6380

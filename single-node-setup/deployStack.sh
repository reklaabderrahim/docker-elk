#!/bin/bash

docker stack deploy -c proxy-stack.yml proxy
docker stack deploy -c elk-stack.yml elk
docker stack deploy -c psql-stack.yml psql
docker stack deploy -c log-stack.yml logstash
docker stack deploy -c beats-stack.yml beats


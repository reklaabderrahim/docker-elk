#!/bin/bash

cat<< END
lister les services:
$(docker service ls)

lister la stack:
$(docker stack ls)

stack elk:
$(docker stack services elk)

stack psql:
$(docker stack services psql)

stack logstash:
$(docker stack services logstash)

stack beats:
$(docker stack services beats)
END


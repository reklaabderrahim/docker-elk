#!/bin/bash

docker service create --name registry --publish 5050:5000 registry:2.7.1
docker image build --tag 127.0.0.1:5050/psql-vabf:v1 -f postgres/ressources/Dockerfile.db.vabf.dump .
docker push 127.0.0.1:5050/psql-vabf:v1

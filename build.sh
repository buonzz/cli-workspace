#/bin/bash

docker build -t buonzz/workspace:latest -t buonzz/workspace:0.0.2 .
docker push buonzz/workspace:latest
docker push buonzz/workspace:0.0.2
#/bin/bash

docker build -t buonzz/workspace:latest -t buonzz/workspace:0.0.2 . --no-cache
docker push buonzz/workspace:latest
docker push buonzz/workspace:0.0.2
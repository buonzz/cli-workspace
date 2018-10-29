#/bin/bash

docker build -t buonzz/workspace:latest -t buonzz/workspace:0.0.1 . --no-cache
docker push buonzz/workspace
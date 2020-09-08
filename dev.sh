#!/bin/bash
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
env="$dir/.env"

if [ ! -f $env ]; then
  echo "file $env cannot be found but is required"
  exit 1
fi;

cd $(dirname $0)
docker-compose -f docker-compose.yml -f docker-compose.dev.yml "$@"
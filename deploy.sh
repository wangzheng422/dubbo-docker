#!/usr/bin/env bash

set -e
set -x

source config.sh

docker build  --no-cache -t ${REGISTRY}/dubbo:consumer ./service-consumer
docker push ${REGISTRY}/dubbo:consumer

docker build  --no-cache -t ${REGISTRY}/dubbo:producer ./service-producer
docker push ${REGISTRY}/dubbo:producer
#!/bin/bash

containerName=docker-rabbitmq-1

# kill the old container
docker stop "$containerName"
docker rm "$containerName"

# run a new container
docker run -d \
  --restart unless-stopped \
  --name "$containerName" \
  -h hostt \
  -e RABBITMQ_DEFAULT_USER=root \
  -e RABBITMQ_DEFAULT_PASS=1 \
  -e RABBITMQ_DEFAULT_VHOST=hostt \
  -p 5673:5672 \
  rabbitmq:alpine

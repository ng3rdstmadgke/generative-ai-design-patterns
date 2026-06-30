#!/bin/bash

mkdir -p ~/.ssh
mkdir -p ~/.aws
mkdir -p ~/.generative-ai-design-patterns/.claude
[ ! -f ~/.generative-ai-design-patterns/.claude.json ] && echo '{}' > ~/.generative-ai-design-patterns/.claude.json
mkdir -p ~/.generative-ai-design-patterns/.config/helm

DOCKER_NETWORK=br-generative-ai-design-patterns-${USER}
NETWORK_EXISTS=$(docker network ls --filter name=$DOCKER_NETWORK --format '{{.Name}}')

if [ -z "$NETWORK_EXISTS" ]; then
  docker network create $DOCKER_NETWORK
fi
#!/bin/bash
docker build -t item-app:v1 .  # BUILD IMAGE
docker images # CHECK IMAGE
docker tag item-app:v1 ghcr.io/rellzy27/item-app:v1 # TAG IMAGE FOR GHCR
echo $GitHubToken | docker login ghcr.io -u Rellzy27 --password-stdin # LOGIN TO GHCR
docker push ghcr.io/rellzy27/item-app:v1 # PUSH IMAGE TO GHCR
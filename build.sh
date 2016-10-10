#!/bin/bash
TAG="neurology/jupyter:$(git describe --tags --always)"
echo "Building $TAG"
docker build --tag "$TAG" .
docker tag "$TAG" "neurology/jupyter:latest"
docker push "$TAG"
docker push "neurology/jupyter:latest"
docker rmi "$TAG"

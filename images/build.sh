#!/bin/bash

DOCKERHUB_USERNAME="${DOCKERHUB_USERNAME:-nikitastupin}"

(cd challenge-base && docker build -t "$DOCKERHUB_USERNAME/ctf/base:latest" .)
(cd eth-challenge-base && docker build -t "$DOCKERHUB_USERNAME/ctf/eth-base:latest" --build-arg "DOCKERHUB_USERNAME=$DOCKERHUB_USERNAME" .)
# (cd cairo-challenge-base && docker buildx build --push --platform linux/amd64 . -t gcr.io/paradigmxyz/ctf/cairo-base:latest)

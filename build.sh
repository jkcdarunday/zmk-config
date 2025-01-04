#!/bin/bash
docker build --tag zmk --file Dockerfile .
docker run --rm -it --name zmk \
  -v ./build:/app/output \
  -v ./config:/app/config:ro \
  -v ./build.yaml:/app/build.yaml:ro \
  zmk

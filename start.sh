#!/bin/bash

# tearing down everything
docker-compose down

# building underlying Dockerfile
docker build -t app:base .

# using override Dockerfile/docker-compose
docker-compose -f docker-compose.yml -f .dev/docker-compose.override.yml up --build -d
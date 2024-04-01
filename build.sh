#!/bin/sh -xe

docker compose -f base/docker-compose.yml build
docker compose -f dev/docker-compose.yml build
docker compose -f release/docker-compose.yml build

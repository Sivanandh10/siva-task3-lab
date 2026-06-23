#!/bin/sh
DOCKER_HOST=unix:///var/run/docker.sock docker network ls | grep -q labnet

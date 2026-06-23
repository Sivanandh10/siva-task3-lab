#!/bin/sh
DOCKER_HOST=unix:///var/run/docker.sock docker ps | grep -q labnet || DOCKER_HOST=unix:///var/run/docker.sock docker inspect $(DOCKER_HOST=unix:///var/run/docker.sock docker ps -q | head -1) 2>/dev/null | grep -q labnet

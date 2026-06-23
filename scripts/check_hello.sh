#!/bin/sh
DOCKER_HOST=unix:///var/run/docker.sock docker ps -a | grep -q hello-world

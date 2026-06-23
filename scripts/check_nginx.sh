#!/bin/sh
DOCKER_HOST=unix:///var/run/docker.sock docker ps | grep -q nginx

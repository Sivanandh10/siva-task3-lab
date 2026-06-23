#!/bin/sh
DOCKER_HOST=unix:///var/run/docker.sock docker volume ls | grep -q mydata

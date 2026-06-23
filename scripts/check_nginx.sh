#!/bin/sh
docker ps --format '{{.Image}}' | grep -q 'nginx'

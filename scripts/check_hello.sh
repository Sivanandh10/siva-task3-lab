#!/bin/sh
docker ps -a --format '{{.Image}}' | grep -q 'hello-world'

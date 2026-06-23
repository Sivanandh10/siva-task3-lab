#!/bin/sh
docker ps | grep -q labnet || docker inspect $(docker ps -q | head -1) 2>/dev/null | grep -q labnet

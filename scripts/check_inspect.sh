#!/bin/sh
test -f /root/docker-workshop/inspect.json && grep -q 'IPAddress' /root/docker-workshop/inspect.json

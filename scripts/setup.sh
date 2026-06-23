#!/bin/bash
apt-get update -y
apt-get install -y docker.io curl jq
dockerd > /var/log/dockerd.log 2>&1 &
sleep 5
mkdir -p /root/docker-workshop
echo '{"workshop":"Docker Fundamentals","started":"2026-06-23"}' > /root/docker-workshop/info.json
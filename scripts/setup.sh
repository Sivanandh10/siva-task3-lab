#!/bin/bash
apt-get update -y
apt-get install -y docker.io curl jq
systemctl start docker || true
mkdir -p /root/docker-workshop
echo '{"workshop":"Docker Fundamentals","started":"2026-06-22"}' > /root/docker-workshop/info.json
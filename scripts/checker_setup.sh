#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
apt-get update -y -qq
apt-get install -y -qq git nfs-common
mkdir -p /root/todoapp
mount -t nfs 10.0.230.4:/root/todoapp /root/todoapp 2>/dev/null || true
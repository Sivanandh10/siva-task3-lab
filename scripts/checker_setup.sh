#!/bin/bash
apt-get update -y -qq
apt-get install -y -qq git nfs-common

# VM's IP on the sandbox network - workstation.vm.sandbox.internal
mkdir -p /root/todoapp
mount -t nfs workstation.vm.sandbox.internal:/root/todoapp /root/todoapp 2>/dev/null || true
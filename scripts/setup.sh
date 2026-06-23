#!/bin/bash
apt-get update -y -qq
apt-get install -y -qq git
git config --global user.email "learner@gitworkshop.com"
git config --global user.name "Learner"
git config --global init.defaultBranch main
mkdir -p /root/gitproject

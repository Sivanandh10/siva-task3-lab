#!/bin/bash
cd /root/gitproject && branch=$(git symbolic-ref --short HEAD 2>/dev/null); git log $branch --oneline 2>/dev/null | grep -qi 'feature'

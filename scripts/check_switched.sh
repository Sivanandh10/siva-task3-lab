#!/bin/bash
cd /root/gitproject && git branch --show-current 2>/dev/null | grep -q 'feature'

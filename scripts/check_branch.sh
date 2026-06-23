#!/bin/bash
cd /root/gitproject && git branch 2>/dev/null | grep -q 'feature'

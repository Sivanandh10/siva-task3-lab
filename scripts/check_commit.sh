#!/bin/bash
cd /root/gitproject && git log --oneline 2>/dev/null | grep -qi 'initial commit'

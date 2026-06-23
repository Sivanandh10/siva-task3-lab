#!/bin/bash
cd /root/gitproject && git log main --oneline 2>/dev/null | grep -qi 'feature'

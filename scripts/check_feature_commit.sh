#!/bin/bash
cd /root/gitproject && count=$(git log feature --oneline 2>/dev/null | wc -l); [ $count -ge 2 ]

#!/bin/bash
cd /root/todoapp && count=$(git log feature --oneline 2>/dev/null | wc -l); [ $count -ge 2 ]

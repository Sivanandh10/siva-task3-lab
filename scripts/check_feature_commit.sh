#!/bin/bash
cd /root/gitproject && git log feature --oneline 2>/dev/null | wc -l | xargs -I{} test {} -ge 2

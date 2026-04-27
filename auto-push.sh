#!/bin/bash
cd /mnt/h/ivolve-tasks/ivolve-tasks
git add .
git commit -m "Auto commit: $(date '+%Y-%m-%d %H:%M:%S')"
git push

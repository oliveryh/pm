#!/bin/bash
cd /projects/pm
git add -A
git diff --cached --quiet || git commit -m "Update for $(date '+%Y-%m-%d')"
git push origin main

#!/bin/bash
set -e

MSG="${1:-chore: checkin}"

git pull origin main
git add -A
git commit -m "$MSG" || echo "No changes to commit"
git push origin main

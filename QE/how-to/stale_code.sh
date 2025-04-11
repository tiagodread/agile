#!/bin/bash

FILES_CHANGED=$(git diff --name-only origin/main..dev | wc -l)
FIRST_COMMIT_DATE=$(git log --reverse --pretty=format:"%ct" origin/main..dev | head -n 1)
CURRENT_DATE=$(date +%s)
STALE_DAYS=$(( (CURRENT_DATE - FIRST_COMMIT_DATE) / 86400 ))
if [ "$FILES_CHANGED" -gt 0 ] && [ $STALE_DAYS -gt 1 ]; then
  echo "$FILES_CHANGED arquivos foram alterados na branch dev aguardando deploy faz $STALE_DAYS dias"
fi

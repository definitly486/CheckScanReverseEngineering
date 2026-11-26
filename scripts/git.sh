#!/bin/sh
# Commit and push repository changes without modifying global Git identity.
set -eu

ROOT=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
cd "$ROOT"

if [ "$#" -lt 1 ]; then
    echo "Usage: $0 \"commit message\"" >&2
    exit 2
fi

git add -A
if git diff --cached --quiet; then
    echo "Нет изменений для коммита."
    exit 0
fi

git commit -m "$*"
git push

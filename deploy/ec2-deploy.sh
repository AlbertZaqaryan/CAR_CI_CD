#!/usr/bin/env bash
set -euo pipefail

APP_DIR="${APP_DIR:-/opt/ci_cd}"
BRANCH="${BRANCH:-main}"

cd "$APP_DIR"

git fetch --all --prune
git checkout "$BRANCH"
git pull origin "$BRANCH"
docker compose up -d --build

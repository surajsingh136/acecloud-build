#!/usr/bin/env bash
set -euo pipefail
if [ -z "${GITHUB_TOKEN:-}" ]; then
  echo "GITHUB_TOKEN missing" >&2
  exit 1
fi
rm -rf src
git clone --depth 1 --branch main "https://oauth2:${GITHUB_TOKEN}@github.com/surajsingh136/acecloud-web.git" src
pip install -r src/requirements.txt

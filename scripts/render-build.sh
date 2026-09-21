#!/usr/bin/env bash
set -euo pipefail
REPO_ROOT="$(pwd)"
cd "${REPO_ROOT}"
cat artifacts/part-*.b64 | base64 -d > dist.tar.gz
tar -xzf dist.tar.gz
rm -f dist.tar.gz
test -f dist/index.html || { echo "missing dist/index.html"; exit 1; }
echo "Assembled dist OK"

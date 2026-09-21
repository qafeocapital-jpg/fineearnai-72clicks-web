#!/usr/bin/env bash
set -euo pipefail
mkdir -p dist
for f in $(ls artifacts/part-*.b64 | sort); do
  base64 -d < "$f"
done > dist.tar.gz
tar -xzf dist.tar.gz -C dist
rm dist.tar.gz

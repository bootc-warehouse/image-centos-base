#!/usr/bin/env bash

set -euo pipefail

# Run base scripts
for script in /tmp/scripts/_base/*.sh; do
  [ -f "$script" ] || continue
  bash "$script"
done

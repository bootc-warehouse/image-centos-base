#!/usr/bin/env bash

set -euo pipefail

dnf install -y \
  bootc \
  bootupd \
  zstd

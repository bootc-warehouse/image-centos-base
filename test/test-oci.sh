#!/usr/bin/env bash

set -euo pipefail

# List installed packages
dnf list installed

# If there are more than 1000 packages installed, exit 1
if [ "$(dnf list installed | wc -l)" -gt 1000 ]; then
  echo "Too many packages installed"
  exit 1
fi

# If there are less than 1000 packages installed, exit 1
if [ "$(dnf list installed | wc -l)" -lt 1000 ]; then
  echo "Not enough packages installed"
  exit 1
fi

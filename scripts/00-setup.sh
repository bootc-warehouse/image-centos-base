#!/usr/bin/env bash

set -euo pipefail

# Remove RedHat subscription manager
dnf remove -y subscription-manager*

# Make all scripts recursively executable.
# Scripts are in subdirectories of this directory.
find $(dirname $0) -type f -name '*.sh' -exec chmod +x {} \;

# Configure DNF
cat <<'EOF' > /etc/dnf/dnf.conf
[main]
gpgcheck=1
installonly_limit=5
clean_requirements_on_remove=True
best=False
skip_if_unavailable=False
install_weak_deps=False
keepcache=True
EOF

dnf install -y \
    epel-release \
    unzip

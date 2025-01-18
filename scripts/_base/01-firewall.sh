#!/usr/bin/env bash

set -euo pipefail

# Tell nftables to use a drop-in directory
cat <<'EOF' > /etc/sysconfig/nftables.conf
include "/etc/nftables/conf.d/*.conf"
EOF

# Create the config directory via systemd-tmpfiles
cat <<'EOF' > /usr/lib/tmpfiles.d/nftables.conf
d /etc/nftables/conf.d 0755 root root
EOF

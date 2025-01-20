#!/usr/bin/env bash

set -euo pipefail

echo "Banner /etc/issue.net" >> /etc/ssh/sshd_config.d/99-banner.conf
cat > /etc/issue.net << 'EOF'
/------------------------------------------------------------------------\
|                       *** NOTICE TO USERS ***                          |
|                                                                        |
| This system uses an image from part of the bootc-warehouse project.    |
| It is a community-supported image and is not intended for production   |
| use.                                                                   |
|                                                                        |
| The project is licensed under the Apache 2.0 licence. Please note that |
| some components within the image may be proprietary.                   |
|                                                                        |
| This image is provided "as is" without any warranties or guarantees.   |
| Use it at your own risk. The maintainers are not liable for any        |
| damages or issues arising from its use.                                |
|                                                                        |
| By using this system, you agree to adhere to the project's community   |
| guidelines and best practices.                                         |
|                                                                        |
| Contributions are welcome! If you'd like to help out, please visit:    |
| https://github.com/bootc-warehouse                                     |
|                                                                        |
| Thank you for using the bootc-warehouse project!                       |
\------------------------------------------------------------------------/
EOF

cat > /etc/motd << 'EOF'
/------------------------------------------\
|      Welcome to the bootc-warehouse!     |
|                                          |
| Community-supported image. Use at own    |
| risk. No warranties or guarantees.       |
|                                          |
| Visit us:                                |
| https://github.com/bootc-warehouse       |
\------------------------------------------/
EOF

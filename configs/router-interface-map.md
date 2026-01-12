# Router Interface Mapping — FRRouting-1

This document maps GNS3 Ethernet ports to Linux interface names
to prevent misconfiguration and aid troubleshooting.

| GNS3 Port | Linux Interface | Connected Segment    |
| --------- | --------------- | -------------------- |
| ETH0      | enp0s3          | Sales Department LAN |
| ETH1      | enp0s8          | Engineering LAN      |
| ETH2      | enp0s9          | Finance LAN          |

This mapping was validated by link-state observation during cabling changes.

# IP Addressing Strategy

## Overview

The organization requires network segmentation, future scalability, VPN compatibility, and support for multi-city expansion.

To reduce the risk of IP overlap with remote workers (who commonly use 192.168.0.0/24 home networks), the private address space 10.0.0.0/8 was selected.

## Addressing Model

A hierarchical addressing scheme is used:

- Second octet → City identifier
- Third octet → Department identifier

Format: 10.<city>.<department>.<host>

Example:
10.1.20.15  
→ City 1, Engineering department

## Subnet Sizing

Department capacity requirements:

- Maximum expected hosts: 50
- Growth buffer: 20%

Subnet selected:

- /26 (255.255.255.192)
- 62 usable IP addresses

This minimizes address waste while avoiding future re-IP efforts.

## Design Benefits

- Enables route summarization
- Clean VLAN-to-subnet mapping (1 VLAN = 1 subnet)
- VPN-friendly addressing
- Scales cleanly across locations

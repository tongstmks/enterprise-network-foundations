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
- Clean VLAN-to-subnet mapping (1 VLAN = 1 subnet, planned for future phases)
- VPN-friendly addressing
- Scales cleanly across locations

## Current Implementation Scope (Phase 1)

In the current phase of this project:

- Only a single site (City 10) is implemented
- Each department is mapped to a dedicated physical router interface
- VLANs and trunking are intentionally excluded
- The hierarchical addressing model is preserved for future expansion

This approach allows validation of IP planning and routing fundamentals
before introducing multi-city routing, VLANs, or VPN connectivity.

## IP Addressing Plan

| Department  | Subnet     | Gateway    | CIDR |
| ----------- | ---------- | ---------- | ---- |
| Sales       | 10.10.10.0 | 10.10.10.1 | /26  |
| Engineering | 10.10.20.0 | 10.10.20.1 | /26  |
| Finance     | 10.10.30.0 | 10.10.30.1 | /26  |

## Gateway Strategy

The first usable IP address in each subnet was assigned to the router
interface acting as the default gateway for that department.

# Troubleshooting Notes

This document records issues encountered during lab setup and how they
were resolved.

## Interfaces Remaining DOWN

### Cause

Linux interfaces remain DOWN unless they are physically (or virtually)
connected.

### Resolution

Ensured each router interface was connected to a switch in GNS3 before
bringing the interface UP.

---

## VirtualBox NAT Adapter Conflict

### Cause

The FRRouting VM had a NAT adapter enabled, which prevented GNS3 from
attaching links to the same interface.

### Resolution

Disabled the NAT adapter in VirtualBox, allowing GNS3 to fully manage
router interfaces.

---

## Temporary IP Configuration Lost After Reboot

### Cause

IP addresses assigned using `ip addr add` exist only in runtime memory.

### Resolution

Created a simple bootstrap script to reapply interface configuration
after VM reboot.

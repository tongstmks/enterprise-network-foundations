# Linux Networking Cheatsheet

Common Linux networking commands used during labs and troubleshooting.

## Interface Configuration

Assign IP address:
ip addr add <ip>/<cidr> dev <interface>

Bring interface up:
ip link set <interface> up

## Verification

Show interface status:
ip -brief addr

Show routing table:
ip route

Show link state:
ip -brief link

## Notes

- Commands applied using `ip` are temporary and do not survive reboot
- Interface names (e.g., enp0s3) are assigned by the OS

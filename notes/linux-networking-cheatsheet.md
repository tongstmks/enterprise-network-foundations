# Linux Networking Cheatsheet

Common Linux networking commands used during labs and troubleshooting.
Commands are grouped by purpose and reflect real operational workflows.

---

## Interface Discovery & Status

List all interfaces:
ip link

Brief interface status:
ip -brief link

Show IP addresses on interfaces:
ip addr
ip -brief addr

---

## IP Addressing (Temporary / Lab)

Assign IP address to interface:
ip addr add <ip>/<mask> dev <interface>

Example:
ip addr add 10.10.10.10/26 dev enp0s3

---

## Interface Management

Bring interface up:
ip link set <interface> up

Bring interface down:
ip link set <interface> down

---

## Routing

Show routing table:
ip route

Add default gateway:
ip route add default via <gateway-ip>

Example:
ip route add default via 10.10.10.1

---

## Connectivity Testing

Test reachability:
ping <ip>

---

## Firewall (Lab Simplification)

Check firewall status:
sudo ufw status

Disable firewall:
sudo ufw disable

---

## FRRouting (vtysh)

Enter FRRouting CLI:
vtysh

Show interface summary:
show ip interface brief

Show routing table:
show ip route

Show OSPF-learned routes:
show ip route ospf

Show OSPF neighbors:
show ip ospf neighbor

---

## Notes

- `ip` commands are **temporary** and do not persist across reboots
- Interface names (e.g., enp0s3) are assigned by the OS
- FRRouting handles **control plane routing**, Linux handles **interface state**
- Always verify before assuming configuration is correct

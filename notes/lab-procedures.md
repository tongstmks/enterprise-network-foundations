# Lab Procedures

## Router Bring-Up & OSPF Advertisement

### 1. Verify Interfaces

ip link
ip addr

Ensure interfaces are UP and IPs are assigned.

---

### 2. Enter FRRouting

vtysh

---

### 3. Verify Interface Mapping

show ip interface brief

---

### 4. Enable / Update OSPF

conf t
router ospf
network <subnet>/<mask> area 0
exit
write
exit

Example:
network 10.10.20.0/26 area 0

---

### 5. Verify OSPF State

vtysh
show ip ospf neighbor
show ip route ospf
exit

## Department Host Bring-Up

### 1. Identify Interface

ip link

Ignore `lo`. Use the active ethernet interface.

---

### 2. Assign IP Address

sudo ip addr add <host-ip>/<mask> dev <interface>
sudo ip link set <interface> up

Example:
sudo ip addr add 10.10.10.10/26 dev enp0s3

---

### 3. Set Default Gateway

sudo ip route add default via <gateway-ip>

Example:
sudo ip route add default via 10.10.10.1

---

### 4. Disable Firewall (Lab Only)

sudo ufw disable

---

### 5. Verify Connectivity

ping <gateway-ip>
ping <remote-router-or-host-ip>

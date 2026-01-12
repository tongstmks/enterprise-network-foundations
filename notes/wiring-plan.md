# GNS3 Wiring Plan

## Purpose

- Implement the previously defined IP plan
- Prepare the topology for multi-router OSPF testing
- Ensure deterministic interface-to-network mapping

## Devices Involved

- FRRouting-1 (Core Router)
- FRRouting-2 (Future Expansion Router)
- Sales-1 (Host)
- Engineering-1 (Host)
- Finance-1 (Host)

## Interface Mapping

### FRRouting-1

- enp0s3 → Sales network
- enp0s8 → Engineering network
- enp0s9 → Finance network
- enp0s10 → Link to FRRouting-2

### Hosts

- Sales-1 → Connected to FRRouting-1 enp0s3
- Engineering-1 → Connected to FRRouting-1 enp0s8
- Finance-1 → Connected to FRRouting-1 enp0s9

### FRRouting-2

- enp0s3 → Link to FRRouting-1

### Router Interconnect

- FRRouting-1 enp0s10 → 10.10.255.1/30
- FRRouting-2 enp0s3 → 10.10.255.2/30

## Logical Connectivity Summary

- Each department host connects to a dedicated router interface
- Routers are connected via a point-to-point link
- No Layer 2 inter-department bridging exists

## Notes

Operational Assumptions:

- All router interfaces are administratively UP
- IP addressing configured manually during bootstrap
- OSPF will be enabled in the next phase
- The router interconnect uses a /30 point-to-point subnet.
- IP addresses are configured manually during the bootstrap phase.

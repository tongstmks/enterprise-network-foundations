# OSPF Design Decisions

## Purpose of Dynamic Routing

This network was designed with future growth in mind, including:

- Additional departments
- Multiple physical locations
- WAN links between sites

Static routing was deemed unsuitable due to operational overhead and poor scalability. A dynamic routing protocol was selected to support automatic route discovery and convergence as the network expands.

## Why OSPF Was Selected Early

OSPF was selected during the design phase even though the initial topology contains only a single router.

This reflects real enterprise practice where routing standards are established before physical expansion occurs. The IP addressing scheme and subnet boundaries were designed to remain compatible with future OSPF deployment without requiring re-addressing.

## Scope of “Internal Routing”

In this context, “internal routing” refers to routing between Layer 3 boundaries within the organization, such as:

- Between departments
- Between buildings or floors
- Between sites

Routing is not performed within a single department subnet, where Layer 2 switching is sufficient.

## Multi-Router Requirement

OSPF requires at least two routers to exchange routing information and form neighbor adjacencies.

The initial single-router topology validates addressing and segmentation. A second router is introduced in the next phase to simulate organizational growth and enable meaningful OSPF behavior, including:

- Neighbor formation
- Route advertisement
- Convergence testing

## OSPF Topology Scope

The initial OSPF deployment consists of two routers:

- A core router that connects all departmental subnets
- A second router representing future organizational expansion (e.g. another site or building)

The routers are connected via a dedicated point-to-point transit network. Departmental networks remain directly connected only to the core router.

## Area Design

A single OSPF backbone area (Area 0) is used.

This simplifies the design while aligning with best practices for small-to-medium enterprise networks. Multi-area designs are intentionally deferred until the network reaches sufficient scale to justify added complexity.

## Advertising Strategy

Only explicitly defined networks will be advertised into OSPF.

Department subnets and router-to-router transit networks are included, while non-essential or future networks are intentionally excluded to maintain routing clarity and control.

This avoids unintended route propagation and mirrors production best practices where route control and predictability are prioritized.

## Summary

OSPF is not required for the initial network to function but is essential for long-term scalability. By designing with OSPF in mind from the beginning, the network can grow without requiring fundamental architectural changes.

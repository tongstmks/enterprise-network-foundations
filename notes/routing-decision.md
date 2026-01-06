# Routing Protocol Selection

## Selected Method: OSPF

Dynamic routing was selected to reflect real enterprise networking practices.

OSPF was chosen because it:

- Is vendor-neutral
- Scales well for internal enterprise networks
- Automatically adapts to topology changes
- Encourages structured IP planning

The goal was not just to make the network work, but to design for growth.

## Current Routing State (Phase 1)

In the current phase of the project:

- Inter-subnet routing is performed by a single router
- Each subnet is directly connected via a dedicated router interface
- No dynamic routing protocol is enabled yet
- Routing decisions rely on connected routes only

This phase validates:

- IP addressing correctness
- Layer 2 connectivity
- Gateway reachability
- Host-to-gateway communication

Dynamic routing will be introduced once the physical and logical
foundations are verified.

### Why OSPF Is Deferred

OSPF configuration is intentionally deferred to avoid masking
fundamental design or connectivity issues.

Introducing OSPF only after verifying connected routing ensures:

- Cleaner troubleshooting
- Clearer understanding of routing behavior
- Stronger foundational skills

## Alternatives Considered

### Static Routing

- Simple to configure
- Not scalable
- High operational overhead
- Prone to human error

### EIGRP

- Efficient but Cisco-specific
- Limits vendor interoperability

### IS-IS

- Highly scalable
- Unnecessarily complex for this network size

### BGP

- Designed for inter-domain routing
- Overkill for internal enterprise networks

## Conclusion

OSPF provides the best balance of scalability, simplicity, and industry relevance for this project.

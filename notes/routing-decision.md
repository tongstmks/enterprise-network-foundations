# Routing Protocol Selection

## Selected Method: OSPF

Dynamic routing was selected to reflect real enterprise networking practices.

OSPF was chosen because it:

- Is vendor-neutral
- Scales well for internal enterprise networks
- Automatically adapts to topology changes
- Encourages structured IP planning

The goal was not just to make the network work, but to design for growth.

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

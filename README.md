# Enterprise Network Foundations

## Project Goal

Design and deploy a segmented internal enterprise network with scalable IP
addressing and dynamic routing.

## Scenario

You are a junior network engineer tasked with designing a small enterprise
internal network for a growing company.

### Business Requirements

- 3 departments
- Network segmentation
- Future growth planning
- Remote workers (VPN consideration)
- Potential expansion into 2–5 cities
- No Internet connectivity (internal-only network)

### Responsibilities

- IP addressing design
- Routing protocol selection
- Logical segmentation
- Technical documentation

## Project Status

✔ Physical & logical topology built in GNS3  
✔ IP addressing & subnetting implemented  
✔ Layer 2 connectivity verified  
✔ Hosts successfully ping default gateways  
⏳ Routing protocol configuration (next phase)

## Architecture Decisions

This project follows a **design-first networking** approach, where architectural
decisions are documented before introducing implementation complexity.

Key design areas:

- Departmental segmentation
- Scalable IP addressing
- Dynamic routing readiness

## Topology Overview

The network consists of three departments (Sales, Engineering, Finance), each
placed in its own Layer 2 broadcast domain. All departments connect to a central
router responsible for inter-subnet routing.

## Skills Demonstrated (So Far)

- Enterprise-style network segmentation
- CIDR-based subnet planning (/26)
- Router interface-to-subnet mapping
- Layer 2 vs Layer 3 separation
- Practical troubleshooting in GNS3

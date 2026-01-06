#!/bin/bash
# Temporary interface configuration for Project 1
# This script must be re-run after VM reboot

ip addr add 10.10.10.1/26 dev enp0s3
ip addr add 10.10.20.1/26 dev enp0s8
ip addr add 10.10.30.1/26 dev enp0s9

ip link set enp0s3 up
ip link set enp0s8 up
ip link set enp0s9 up
#!/usr/bin/env bash

# Exit on any error (non-zero return code)
set -e

swapon -s

swapoff -a

[ -f /swapfile ] && rm -f /swapfile

# Create swapfile of 2GB with block size 1MB
#/bin/dd if=/dev/zero of=/swapfile bs=1024 count=2097152

# Create swapfile of 1GB with block size 1MB
# /bin/dd if=/dev/zero of=/swapfile bs=1024 count=1048576
fallocate -l 1G /swapfile

# Set up the swap file
/sbin/mkswap /swapfile

chmod 600 /swapfile

# Enable swap file immediately
/sbin/swapon /swapfile

swapon -s

# Enable swap file on every boot
/bin/echo '/swapfile swap swap defaults 0 0' >> /etc/fstab

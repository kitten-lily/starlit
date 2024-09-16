#!/bin/bash

set -ouex pipefail

git clone https://github.com/secureblue/secureblue.git /tmp/secureblue

mkdir -p /tmp/system_files/etc/sysconfig
mkdir -p /tmp/system_files/etc/sudoers.d

# Per-network MAC randomization
mv /tmp/secureblue/files/system/etc/NetworkManager /tmp/system_files/etc/

# Lock down firewall
mv /tmp/secureblue/files/system/etc/firewalld /tmp/system_files/etc/

# Configure chronyd to use Network Time Security (NTS)
mv /tmp/secureblue/files/system/etc/chrony.conf /tmp/system_files/etc/chrony.conf
mv /tmp/secureblue/files/system/etc/sysconfig/chronyd /tmp/system_files/etc/sysconfig/

# sudo timeout to 1min instead of 0min
mv /tmp/secureblue/files/system/etc/sudoers.d/timeout /tmp/system_files/etc/sudoers.d/

# Disable passwordless sudo for rpm-ostree install
mv /tmp/secureblue/files/system/usr/share/polkit-1/rules.d/org.projectatomic.rpmostree1.rules /tmp/system_files/usr/share/polkit-1/rules.d/

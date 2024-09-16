#!/bin/bash

set -ouex pipefail

git clone git clone https://github.com/ublue-os/bluefin.git /tmp/bluefin

mkdir -p /tmp/system_files/etc
mv /tmp/bluefin/system_files/shared/etc/yum.repos.d /tmp/system_files/etc/
mv /tmp/bluefin/system_files/shared/etc/security /tmp/system_files/etc/
mv /tmp/bluefin/system_files/shared/etc/ublue-update /tmp/system_files/etc/

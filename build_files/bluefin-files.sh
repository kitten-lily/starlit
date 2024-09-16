#!/bin/bash

set -ouex pipefail

git clone https://github.com/ublue-os/bluefin.git /tmp/bluefin

mkdir -p /tmp/system_files/etc
mkdir -p /tmp/system_files/usr/share/ublue-os

mv /tmp/bluefin/system_files/shared/etc/yum.repos.d /tmp/system_files/etc/
mv /tmp/bluefin/system_files/shared/etc/security /tmp/system_files/etc/
mv /tmp/bluefin/system_files/shared/etc/ublue-update /tmp/system_files/etc/
mv /tmp/bluefin/system_files/shared/etc/systemd /tmp/system_files/etc/
mv /tmp/bluefin/system_files/shared/usr/bin /tmp/system_files/usr/
mv /tmp/bluefin/system_files/shared/usr/lib /tmp/system_files/usr/
mv /tmp/bluefin/system_files/shared/usr/libexec /tmp/system_files/usr/
mv /tmp/bluefin/system_files/shared/usr/share/fish /tmp/system_files/usr/share/
mv /tmp/bluefin/system_files/shared/usr/share/fonts/inter /tmp/system_files/usr/share/
mv /tmp/bluefin/system_files/shared/usr/share/polkit-1 /tmp/system_files/usr/share/
mv /tmp/bluefin/system_files/shared/usr/share/ublue-os/topgrade.toml /tmp/system_files/usr/share/ublue-os/
mv /tmp/bluefin/system_files/shared/usr/share/ublue-os/just /tmp/system_files/usr/share/ublue-os/
mv /tmp/bluefin/system_files/shared/usr/share/ublue-os/ublue-os.jsonc /tmp/system_files/usr/share/ublue-os/
mv /tmp/bluefin/system_files/shared/usr/share/wireplumber /tmp/system_files/usr/share/

mv /tmp/bluefin/system_files/dx/etc/yum.repos.d/* /tmp/system_files/etc/yum.repos.d/
mv /tmp/bluefin/system_files/dx/usr/lib/sysctl.d/* /tmp/system_files/usr/lib/sysctl.d/
mv /tmp/bluefin/system_files/dx/usr/lib/systemd/system/* /tmp/system_files/usr/lib/systemd/system/
mv /tmp/bluefin/system_files/dx/usr/lib/tmpfiles.d/* /tmp/system_files/usr/lib/tmpfiles.d/
mv /tmp/bluefin/system_files/dx/usr/libexec/* /tmp/system_files/usr/libexec/

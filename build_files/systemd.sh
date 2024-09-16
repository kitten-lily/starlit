#!/usr/bin/bash

set -ouex pipefail

systemctl enable rpm-ostree-countme.service
systemctl enable tailscaled.service
systemctl enable ublue-update.timer
systemctl enable ublue-system-setup.service
systemctl enable ublue-guest-user.service
systemctl enable brew-setup.service
systemctl enable brew-upgrade.timer
systemctl enable brew-update.timer
systemctl --global enable ublue-user-setup.service
systemctl --global enable podman-auto-update.timer

systemctl enable docker.socket
systemctl enable podman.socket
systemctl enable swtpm-workaround.service
systemctl enable libvirt-workaround.service
systemctl enable bluefin-dx-groups.service
systemctl disable pmie.service
systemctl disable pmlogger.service

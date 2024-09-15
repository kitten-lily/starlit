#!/usr/bin/bash

set -ouex pipefail

rpm-ostree install \
	bootc \
	evtest \
	fastfetch \
	fish \
	fuse-encfs \
	gcc \
	glow \
	gum \
	libxcrypt-compat \
	lm_sensors \
	make \
	mesa-libGLU \
	nerd-fonts \
	pulseaudio-utils \
	solaar \
	stress-ng \
	tailscale \
	wireguard-tools \
	wl-clipboard

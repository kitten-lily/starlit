#!/bin/bash

set -ouex pipefail

. /ctx/build_files/bluefin-files.sh
. /ctx/build_files/secureblue-files.sh

cp -r /ctx/just /tmp/just
cp -r /tmp/bluefin/just/* /tmp/just/
cp /ctx/packages.json /tmp/packages.json
cp /tmp/system_files/etc/ublue-update/ublue-update.toml /tmp/ublue-update.toml

rsync -rvK /tmp/system_files/ /

. /tmp/bluefin/build_files/cache_kernel.sh
. /ctx/build_files/copr-repos.sh
. /tmp/bluefin/build_files/copr-repos-dx.sh
. /tmp/bluefin/build_files/install-akmods.sh
. /tmp/bluefin/build_files/install-akmods-dx.sh
. /tmp/bluefin/build_files/packages.sh
. /tmp/bluefin/build_files/image-info.sh
. /tmp/bluefin/build_files/fetch-install.sh
. /tmp/bluefin/build_files/brew.sh
. /ctx/build_files/font-install.sh
. /tmp/bluefin/build_files/workarounds.sh
. /ctx/build_files/systemd.sh
# /ctx/build_files/branding.sh
. /tmp/bluefin/build_files/initramfs.sh
. /tmp/bluefin/build_files/bootc.sh
. /tmp/bluefin/build_files/cleanup.sh
. /tmp/bluefin/build_files/cleanup-dx.sh

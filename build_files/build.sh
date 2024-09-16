#!/bin/bash

set -ouex pipefail

. /ctx/build_files/bluefin-files.sh
cp /ctx/system_files/etc/ublue-update/ublue-update.toml /tmp/ublue-update.toml

rsync -rvK /tmp/system_files/ /

. /ctx/build_files/cache_kernel.sh
. /ctx/build_files/copr-repos.sh
. /ctx/build_files/install-akmods.sh
. /ctx/build_files/packages.sh

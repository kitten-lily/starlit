#!/bin/bash

set -ouex pipefail

. /ctx/build_files/bluefin-files.sh
. /ctx/build_files/secureblue-files.sh

cp /ctx/packages.json /tmp/packages.json
cp /tmp/system_files/etc/ublue-update/ublue-update.toml /tmp/ublue-update.toml

rsync -rvK /tmp/system_files/ /

. /tmp/bluefin/build_files/cache_kernel.sh
. /ctx/build_files/copr-repos.sh
. /tmp/bluefin/build_files/install-akmods.sh
. /tmp/bluefin/build_files/packages.sh

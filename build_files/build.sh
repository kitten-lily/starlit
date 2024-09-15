#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

. /ctx/build_files/cache_kernel.sh
. /ctx/build_files/copr-repos.sh
. /ctx/build_files/install-akmods.sh
. /ctx/build_files/packages.sh

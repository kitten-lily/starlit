#!/bin/bash

set -ouex pipefail

mkdir -p /system_files/etc
mv /bluefin/system_files/shared/etc/security /system_files/etc
mv /bluefin/system_files/shared/etc/yum.repos.d /system_files/etc

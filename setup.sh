#!/bin/bash

set -e

if [[ -z "${APM_TMP_DIR}" ]]; then
  echo "APM_TMP_DIR is not set"
  exit 1
fi

if [[ -z "${APM_PKG_INSTALL_DIR}" ]]; then
  echo "APM_PKG_INSTALL_DIR is not set"
  exit 1
fi

wget https://github.com/rizinorg/cutter/releases/download/v2.1.0/Cutter-v2.1.0-Linux-x86_64.AppImage -O $APM_TMP_DIR/cutter.AppImage
mv $APM_TMP_DIR/cutter.AppImage $APM_PKG_INSTALL_DIR/cutter.AppImage
chmod +x $APM_PKG_INSTALL_DIR/cutter.AppImage
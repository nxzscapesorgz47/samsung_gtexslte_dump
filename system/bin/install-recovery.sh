#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY:8912896:7bbef2caa46c4d0804ecfb0b25aa9610e9db37d3; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdio_emmc/by-name/KERNEL:7794688:0220214a834e803f1a1b89456715c076e3d22b46 EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY 7bbef2caa46c4d0804ecfb0b25aa9610e9db37d3 8912896 0220214a834e803f1a1b89456715c076e3d22b46:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

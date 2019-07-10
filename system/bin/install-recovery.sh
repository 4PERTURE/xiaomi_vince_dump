#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:38399310:15da5a7bba8c2ea97319b9d020c70d64418e3ead; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:32828746:720d9a34d4c749323af4895eb570a3f46d14cc79 EMMC:/dev/block/bootdevice/by-name/recovery 15da5a7bba8c2ea97319b9d020c70d64418e3ead 38399310 720d9a34d4c749323af4895eb570a3f46d14cc79:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers
# Changes for SkyDragon by HolyAngel @ xda-developers
# Changes for NetHunter by Re4son

## AnyKernel setup
# begin properties
properties() { '
kernel.string=NetErnels for Gucci
do.devicecheck=1
do.modules=1
do.systemless=0 #Never use this for NetHunter kernels as it prevents us from writing to /lib/modules
do.cleanup=1
do.cleanuponabort=0
device.name1=gucci
device.name2=xiaomi
device.name3=Redmi note Prime
device.name4=HM NOTE 1S
device.name5=GUCCI
device.name6=Hm Note 1S
supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## Trim partitions
fstrim -v /cache;
fstrim -v /data;

## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
chmod -R 750 $ramdisk/*;
chown -R root:root $ramdisk/*;

## AnyKernel install
dump_boot;

# begin ramdisk changes


# end ramdisk changes

write_boot;
## end install


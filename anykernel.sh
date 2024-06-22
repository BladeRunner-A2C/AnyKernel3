# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=QuicksilveR Kernel by Impala#67
do.devicecheck=1
do.modules=1
do.systemless=1
device.name1=pdx215
device.name2=pdx214
device.name3=sagami
device.name4=XQ-BC72
device.name5=XQ-BC52
do.cleanup=1
'; } # end properties

block=boot;
is_slot_device=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;


## AnyKernel boot install
split_boot;
flash_boot;
## end boot install


# vendor_boot shell variables
block=vendor_boot;
is_slot_device=auto;


# reset for vendor_boot patching
reset_ak;

## AnyKernel vendor_boot install
split_boot;
flash_boot;
## end vendor_boot install

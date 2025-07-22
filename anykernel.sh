### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=SentrY Kernel for the Nubia Z60 Ultra
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=cerro
device.name2=PQ83A01
'; } # end properties

### AnyKernel install
# boot install
block=boot;
is_slot_device=1;
. tools/ak3-core.sh;
split_boot;
flash_boot;
## end boot install

# vendor_boot install
block=vendor_kernel_boot;
is_slot_device=1;
reset_ak;
split_boot;
flash_boot;
## end vendor_boot install

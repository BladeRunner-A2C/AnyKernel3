### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Do you like what you see?
do.devicecheck=1
do.cleanup=1
device.name1=NX769J
'; } # end properties


### AnyKernel install

# boot install
block=boot;
is_slot_device=1;
. tools/ak3-core.sh;
split_boot;
flash_boot;
## end boot install

# vendor_kernel_boot install (for dtb)
block=vendor_kernel_boot;
is_slot_device=1;
reset_ak;
split_boot;
flash_boot;
## end vendor_kernel_boot install

# dtbo install
flash_generic dtbo;
## end dtbo install

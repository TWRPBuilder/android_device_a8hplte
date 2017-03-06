#include <stdlib.h>

// These are paths to folders in /sys which contain "uevent" file
// need to init this device.
// MultiROM needs to init framebuffer, mmc blocks, input devices,
// some ADB-related stuff and USB drives, if OTG is supported
// You can use * at the end to init this folder and all its subfolders
const char *mr_init_devices[] =
{
    "/sys/class/graphics/fb0",
    "/sys/class/graphics/fb1",
    "/sys/devices/virtual/graphics/fb0",
    "/sys/devices/virtual/graphics/fb1",

    "/sys/block/*",
    "/sys/block/sde/*",

    // boot and data
    "/dev/block/mmcblk0p16", //boot
    "/dev/block/mmcblk0p27", //data

    // system and cache
    "/dev/block/mmcblk0p25", //system
    "/dev/block/mmcblk0p26", //cache

    // Mount persist
    "/dev/block/mmcblk0p22", // persist

    "/sys/bus/mmc*",
    "/sys/bus/mmc/drivers/mmcblk",
    "/sys/bus/sdio/drivers",
    "/sys/module/sdhci",
    "/sys/module/sdhci*",
    "/sys/module/sdhci_msm",
    "/sys/module/sdhci_msm*",


    // for input
    "/sys/devices/virtual/input*",
    "/sys/devices/virtual/input/input0",
    "/sys/devices/virtual/input/input1",
    "/sys/devices/virtual/input/input2",
    "/sys/devices/virtual/input/input3",
    "/sys/devices/virtual/input/input4",
    "/sys/devices/virtual/input/input5",
    "/sys/devices/virtual/misc/uinput",
    "/sys/devices/soc/soc:gpio_keys/input/input5",
    "/sys/bus/platform/devices/soc:gpio_keys/input/input5"
    "/sys/devices/virtual/misc/uinput",
    "/sys/devices/virtual/misc/uinput/*",
    "/sys/devices/soc/75b6000.i2c/i2c-8/8-0034/*",
    "/sys/devices/soc/75b6000.i2c/i2c-8/8-0051/*",
    "/sys/devices/soc/757a000.i2c/i2c-6/6-0008/*",
    "/sys/devices/soc/757a000.i2c/i2c-6/6-0051/*",
    "/sys/devices/soc/75ba000.i2c/i2c-12/12-004a/*",
    "/sys/devices/soc/75ba000.i2c/i2c-12/12-004b/*",
    "/sys/devices/soc0*",
    "/sys/devices/soc0/*",


    // for adb
    "/sys/class/tty/ptmx",
    "/sys/class/misc/android_adb",
    "/sys/class/android_usb/android0*",
    "/sys/class/android_usb/android0/f_adb",
    "/sys/bus/platform/drivers/android_usb",
    "/sys/bus/usb",

    // for qualcomm overlay - /dev/ion
    "/sys/devices/virtual/misc/ion",

    // Adding Wildcard for Debug And for Bringup
    "/sys/*",

    NULL
};

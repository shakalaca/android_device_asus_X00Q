DEVICE_PATH := device/asus/X00Q
NEW_PLATFORM_VERSION := 9
NEW_PLATFORM_SECURITY_PATCH := 2019-05-01

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := sdm660

# Platform
TARGET_BOARD_PLATFORM := sdm660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno509

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

#TARGET_USES_ION := true
#TARGET_USES_NEW_ION_API := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 
BOARD_KERNEL_CMDLINE += androidboot.console=ttyMSM0 androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3
BOARD_KERNEL_CMDLINE += earlycon=msm_serial_dm,0xc170000 msm_rtb.filter=0x37 ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += sched_enable_hmp=1 sched_enable_power_aware=1
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1 service_locator.enable=1 swiotlb=1
BOARD_KERNEL_CMDLINE += user_debug=31 androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware_mnt/image loop.max_part=7
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000

BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CONFIG := ze620kl-user-sdm660-perf_defconfig
TARGET_KERNEL_SOURCE := kernel/asus/X00Q
# Only when you don't have the source
#TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel

TARGET_HW_DISK_ENCRYPTION := true

# Fix access denied issue
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# For decrypting /data, we need to hack recovery.img and inject new os and
# security version
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/boot.mk

-include $(DEVICE_PATH)/BoardConfigTWRP.mk
